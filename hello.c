#include <stdio.h>
#include "hello.h"

double doublefun(double b){
    printf("c(%g)",b);
    return b+12.5;
}

float floatfun(float b){
    printf("c(%f)",b);
    return b+12.5;
}

int intfun(int b){
    printf("c(%d)",b);
    return b+12;
}