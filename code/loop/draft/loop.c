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
  int cpt=0, fd;  
  char buf[6], name[SIZE], c;
  
  if( (fd = open(argv[1], O_CREAT | O_RDWR, 0600)) == -1){
    printf("open error\n");
    return -1;
  }

  printf("j'ai ouvert\n");
 
  while (c != EOF){
    printf("je rentre ou pas\n");
    read(fd, buf, 1);
    printf("%s buf\n",buf);
    c = buf[0];
    if(c == 'd'){
      read(fd, buf, 5);
      c = buf[4];
      if(strcmp(buf, "river") == 0){

	read(fd, buf, 1);
	c = buf[0];
	while ((strcmp(buf, "\n") != 0) || (strcmp(buf, "/") != 0)){
	  printf("%s find name\n", buf);
	  read(fd, buf, 1);
	  c = buf[0];
	  strcat(name, buf);
	  printf("name %s\n \n", name);
	}
	if (strcmp(name, driver_loop->name) != 0){
	  printf("%s name \n \n", name);
	  strcpy(name, driver_loop->name);
	  driver_loop_temp = driver_loop;
	  driver_loop->desc_position = fd;
	  driver_loop->driver_next = (driver_list*)malloc(sizeof(driver_list));
	  driver_loop = driver_loop->driver_next;
	  driver_loop->driver_previous = driver_loop_temp;
	}
      }
    }
    
      if(c == 'f'){  
      read(fd, buf, 2);
      c = buf[1];
      if(strcmp(buf, "or") == 0){
	cpt++;
	printf("%d cpt %s driver \n", cpt, name);
      }
    }

       if(c == 'w'){
      read(fd, buf, 4);
      c = buf[3];
      if(strcmp(buf, "hile") == 0){
	cpt++;
	printf("%d cpt %s driver \n", cpt, name);
      }
    }    
  }

  printf("this is the end");

  close(fd);

  return 0;

}
