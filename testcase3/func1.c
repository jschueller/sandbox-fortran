#include <stdio.h>

void func1(double *a, double *b)
{
  printf("func1 (c)\n");
  printf("func1 (c) a=%x\n", (unsigned)a);
  printf("func1 (c) a0=%g\n", a[0]);
  printf("func1 (c) b=%x\n", (unsigned)b);
  b[0] = 7.;
}
