#include <stdio.h>

float average(int* a, unsigned l);

int main(void) {
  int a[] = {82,  98, 90, 88, 87, 75};

  float avg = average(a, sizeof(a)/sizeof(int));

  printf("Average:  %2.2f\n", avg);
}
