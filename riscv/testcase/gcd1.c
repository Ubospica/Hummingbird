#include "io.h"
int gcd(int x, int y) {
  if (x%y == 0) return y;
  else return gcd(y, x%y);
}

int main() {
    outlln(gcd(10,1));
    return 0;
}