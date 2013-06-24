//
//  main.c
//  Address
//
//  Created by 原田 勝信 on 2013/06/24.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    int *addressOfI = &i;
    printf("I stores its value at %p\n", addressOfI);
    *addressOfI = 89;
    //printf("this function starts at %p\n", main);
    printf("Now i is %d\n", *addressOfI);
    printf("An int is %zu bytes\n", sizeof(i));
    printf("An pointer is %zu bytes\n", sizeof(addressOfI));
    
    // challenge
    printf("An float is %zu bytes\n", sizeof(float));
    
    return 0;
}

