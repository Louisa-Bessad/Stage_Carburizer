#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>

#define SIZE 128

struct driver{
  char name[SIZE];
  int desc_position;
  struct driver *driver_next;
  struct driver *driver_previous;
};

typedef struct driver driver_list;
