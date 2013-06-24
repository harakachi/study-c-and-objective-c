//
//  main.c
//  PBR
//
//  Created by 原田 勝信 on 2013/06/24.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartesianToPolar(double x, double y, double *rPtr, double *thetaPtr)
{
    if (rPtr) {
        *rPtr = sqrt(x * x + y * y);
    }
 
    if (!thetaPtr) {
        return;
    }
    
    double theta;
    if (x == 0.0) {
        if (y == 0.0) {
            theta = 0.0;
        } else if (y > 0) {
            theta = M_PI_2;
        } else {
            theta = - M_PI_2;
        }
    } else {
        theta = atan(y/x);
    }
    *thetaPtr = theta;
}

int main(int argc, const char * argv[])
{
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    fractionPart = modf(pi, &integerPart);
    
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    
    
    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;
    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f, %.2f radians)\n", x,y,radius,angle);
    
    return 0;
}

