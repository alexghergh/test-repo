#include <stdio.h>

int main() {
    printf("hey from build\n");

#ifdef __APPLE__
    return 0
#endif

#ifdef __WIN64
    return 0;
#endif

#ifdef __linux__
    return 0;
#endif
}
