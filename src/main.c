#include <stdio.h>

int main() {
    printf("hey from build\n");

    int x;

    for (int i = 0; i < 2; i++) {
    if (x == 2)
        continue;
    else
        x++;
    }

    return 0;
}
