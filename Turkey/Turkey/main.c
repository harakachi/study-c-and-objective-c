//
//  main.c
//  Turkey
//
//  Created by 原田 勝信 on 2013/06/23.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    float weight;
    weight = 14.2;
    printf("The Turkey weight %f.\n", weight);
    
    float cookingTime;
    cookingTime = 15.0 + 15.0 * weight;
    printf("Cook it for %f minutes.\n", cookingTime);
    
    // Challenges
    float a = 3.14;
    float b = 42.0;
    double c = a + b;
    printf("double is  %f.\n", c);
    
    return 0;
}

