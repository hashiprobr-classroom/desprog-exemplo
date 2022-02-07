#include <stdio.h>

#include "example.h"

void example() {
    int s = 0;
    for (int i = 0; i < 100; i++) {
        s += i;
    }
    printf("%d\n", s);
}
