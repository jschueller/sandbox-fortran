#include <stdio.h>

static void callback1(int * a)
{
  printf("callback1 (c)\n");
  *a = 8;
}

typedef void (*callback_function)(int * a);

void routine1(callback_function callback);

int main(int argc, char *argv[])
{
  (void) argc;
  (void) argv;
  printf("main (c)\n");
  routine1(&callback1);
  return 0;
}

