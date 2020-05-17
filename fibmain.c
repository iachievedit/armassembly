#include <stdio.h>

int fib(int n);

int main(void) {
  for (int i = 10; i > 0; i--) {
    int f = fib(i);
    printf("fib(%d) = %d\n", i, f);
  }
  return 0;
}
