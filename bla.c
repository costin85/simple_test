#include <stdlib.h>
#include <stdio.h>


const char* bla[2] = {
    "bla",
    "tralal"
};

#define NO_CHR sizeof(bla)/sizeof(bla[0])
int main(void) {
    int fd[2];
    printf("sizeof : %i - %i\n", sizeof(fd), NO_CHR);
}