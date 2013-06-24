//
//  main.c
//  BMICalc
//
//  Created by 原田 勝信 on 2013/06/24.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#include <stdio.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p){
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[])
{
    Person person;
    person.weightInKilos = 96;
    person.heightInMeters = 1.8;
    float bmi = bodyMassIndex(person);
    printf("person has a bmi of %f\n", bmi);
    printf("person weighs %d kilograms\n", person.weightInKilos);
    printf("person is %.2f meters tall\n", person.heightInMeters);
    return 0;
}

