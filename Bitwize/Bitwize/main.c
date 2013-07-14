//
//  main.c
//  Bitwize
//
//  Created by 原田 勝信 on 2013/07/15.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    unsigned char a = 0x3c;
    unsigned char b = 0xa9;
    
    // 論理和
    unsigned char c = a | b;
    printf("HEX : %x | %x = %x \n", a, b, c);
    printf("decimal : %d | %d = %d \n", a, b, c);
    
    //論理積
    unsigned char d = a & b;
    printf("HEX : %x & %x = %x \n", a, b, d);
    printf("decimal : %d & %d = %d \n", a, b, d);
    
    //排他的論理和
    unsigned char e = a ^ b;
    printf("HEX : %x ^ %x = %x \n", a, b, e);
    printf("decimal : %d ^ %d = %d \n", a, b, e);
    
    // ビット反転
    unsigned char f = ~b;
    printf("HEX : The complement of %x is %x \n", b, f);
    printf("decimal : The complement of %d is %d \n", b, f);
    
    // 左シフト
    // 1ビットシフトすると倍になる
    unsigned char g = a << 3;
    printf("HEX : %x shifted left two places is %x \n", a, g);
    printf("decimal : %d shifted left two places is %d \n ", a, g);
    
    // 右シフト
    // 1ビットシフトすると半分になる
    unsigned char h = a >> 1;
    printf("HEX : %x shifted right one places is %x \n", a, h);
    printf("decimal : %d shifted right one places is %d \n ", a, h);
    return 0;
}

