//
//  main.c
//  Yostring
//
//  Created by 原田 勝信 on 2013/07/15.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    //char x = 0x21;
    char x = '!';
    
    //while (x <= 0x7e) {
    while (x <= '~') {
        printf("%x is %c\n", x, x);
        x++;
    }
    
    int space_count = 0;
    const char *sentence = "he was not in the cab at the time.";
    //for (int i=0; i < strlen(sentence); i++) {
    for (int i = 0; sentence[i] != '\x00'; i++) {
        if (sentence[i] == 0x20) {
            space_count++;
        }
    }
    printf("space is %d\n", space_count);
    
    return 0;
}

