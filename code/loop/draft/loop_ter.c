#include <string.h>
#include "loop.h"


int main(int argc, char **argv)
{

  if (argc != 2)
    {
      printf("error number of argument\n");
      return -1;
    }

  /* Variables */
  driver_list *driver_loop = (driver_list*)malloc(sizeof(driver_list));
  driver_loop->driver_previous = NULL;
  driver_list *driver_loop_temp = (driver_list*)malloc(sizeof(driver_list));
  driver_list *origin = (driver_list*)malloc(sizeof(driver_list));
  int cpt=0, cpt_ligne=1, bool=0, nb_l;
  FILE *fd;
  int ch;
  char buf[6], champs[SIZE], *src;
  src="drivers";
  
  if( (fd = fopen(argv[1], "r")) == NULL)
    {
      printf("open error\n");
      return -1;
    }


 /* Idée: il faut lire tout la ligne plutot que char par char. Ensuite tu
    commence à ananalysr la ligne. Si tu trouvedrivers sur une ligne qui
    commence par diff, alors tu as le nom de ton driver et la ligne à laquelle
    le patch commence. Ensuite tu as besoin de sauter 3 lignes et et tu peux
    commencer à compter les boucles à partir de là */

 /* Le fait de compter char par char ça fait que si tu trouve driver à la ligne
    1, tu va continuer à chercher sur cette ligne alors qu'il faudrait aller à
    la suivante et ça fausse le compteur de position des drivers */


  /* Commentaire pour moi-même: you're a genius */

  while ( (ch = fgetc(fd)) != EOF )
    {
      //printf("r_char: %c (%d)\n", (char)ch, ch);

      if ( ch == 10 ) // Gros hack de la mort
	cpt_ligne++;

    //printf("ch: %d\t src[0] == %c \n", ch, src[0]);
    if (ch == src[0])
      {
        fseek(fd, -1, SEEK_CUR);
	fgets(champs, strlen(src)+1, fd);
        //printf("src: %s\tchamps: %s\n", src, champs);
	if ( strcmp(src, champs) == 0)
	  {
	    fseek(fd, 1, SEEK_CUR);
	    /* Erreur dans la fgets: il commence a récupére les trucs sur la
	       ligne d'après du coup les lignes sont traitées deux fois */

	    int tmp_size = 0;
	    int tmp_pos = ftell(fd);
	    //printf("pos: %d\n", tmp_pos);
	    char tmp_c;
	    while ( (tmp_c=fgetc(fd)) != 32 ) // 32 == escape
	      tmp_size++;

	    fseek(fd, -tmp_size, SEEK_CUR);
	    //printf("pos: %d\n", (int)ftell(fd));
	    fgets(champs, SIZE, fd);
	    strncpy(driver_loop->name, champs, tmp_size);
	    driver_loop_temp = driver_loop;
	    driver_loop->desc_position = cpt_ligne;

	    printf("line %d: %s\n",
		   driver_loop->desc_position, driver_loop->name);

	    driver_loop->driver_next = (driver_list*)malloc(sizeof(driver_list));
	    if (!bool)
	      origin = driver_loop;
	    driver_loop = driver_loop->driver_next;
	    driver_loop->driver_previous = driver_loop_temp;
	  }
      }
    }
  exit(0);
  /* Retourner au début du fichier!!!!!!!! */
  
  fseek(fd, 0, SEEK_SET);
  driver_loop = origin;
  ch = 0;
  char *src_f = "for", *src_w = "while";
  nb_l = cpt_ligne;
  printf("max line %d\n", nb_l);
  exit(0);
  cpt_ligne = 1;

  while( ch != EOF )
    {
      printf("i am here\n");
      printf("ligne à atteindre: %d\n", driver_loop->desc_position);
      while( ( cpt_ligne != driver_loop->desc_position )
	     && ( cpt_ligne != nb_l ) )
	{
	  cpt_ligne++;
	  printf("%d\n", cpt_ligne);
	  ch = fgetc(fd);
	  printf("ch %c \n", ch);

	  if ( ch == src_f[0] )
	    {
	      printf(" i found a f\n");
	      fgets(champs, strlen(src_f), fd);
	      if(strcmp(src_f+1, champs) == 0){
		fseek(fd, strlen(src_f)-1, SEEK_CUR);
		cpt++;
	      }
	    }
	  else if (ch == src_w[0])
	    {
	      printf(" i found a w\n");
	      fgets(champs, strlen(src_w), fd);
	      if(strcmp(src_w+1, champs) == 0){
		fseek(fd, strlen(src_w)-1, SEEK_CUR);
		cpt++;
	      }
	    }
	}
    }

    printf("name %s et cpt %d \n", driver_loop->name, cpt);
    cpt = 0;
    driver_loop = driver_loop->driver_next;
    fclose(fd);

  return 0;

}
