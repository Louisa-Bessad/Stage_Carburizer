#include "loop.h"

int main(int argc, char **argv){

  if (argc != 2){
    printf("error number of argument\n");
    return -1;
  }

  /* Variables */
  driver_list *driver_loop = (driver_list*)malloc(sizeof(driver_list));
  driver_loop->driver_previous = NULL;
  driver_list *driver_loop_temp = (driver_list*)malloc(sizeof(driver_list));
  int n;
  FILE *fd;
  char buf[6], name[SIZE], ch;
  if( (fd = fopen(argv[1], "r")) == NULL){
    printf("open error\n");
    return -1;
  }

  /* Find all driver files what contain loops */
  while(ch != EOF){
    printf("I'm here \n");
    /*n = fread(buf, 6, 1, fd);
      if (n < 0){
      printf("read error\n");
      return -1;
      }*/
    /* ch = fget(fd);
       if(ch=="d"){*/
    fgets(name, 6, fd);
    if (strcmp("driver",name) == 0){
      printf("I'm here_bis \n");
      
      /*if (strcmp(buf, "driver") == 0){
	printf("hop");*/
      fseek(fd, 6, SEEK_CUR);
      printf("bim");
      if (fgets(name, SIZE, fd)){
	/*	if (strcmp(driver_loop->driver_previous->name, name)!=0){*/
	  printf("driver: %s \n", name);
	  strcpy(name, driver_loop->name);
	  driver_loop_temp = driver_loop;
	  driver_loop->desc_position = fd;
	  driver_loop->driver_next = (driver_list*)malloc(sizeof(driver_list));
	  driver_loop = driver_loop->driver_next;
	  driver_loop->driver_previous = driver_loop_temp;
	  /*}*/
      }
    }

      else {
	printf("oups");
	fd++;    
      }

  }

  /* Retourner au début du fichier!!!!!!!! */

  fclose(fd);

  return 0;

}
