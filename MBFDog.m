//
//  MBFDog.m
//  Man's Best Friend
//
//  Created by Tarrant Cutler on 2/6/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

-(void)bark
{
    NSLog(@"Woof Woof!");
}

-(void)barkANumberOfTimes:(int)numberOfTimes
{
    for (int bark = 0; bark < numberOfTimes; bark++)
    {
        [self bark];
    }
}

-(void)changeBreedToWereWolf
{
    self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud)
    {
        for (int bark = 0; bark < numberOfTimes; bark++)
        {
            NSLog(@"yip yip!");
        }
    }
    else
    {
        for (int bark = 0; bark < numberOfTimes; bark++)
        {
            NSLog(@"WOOF WOOF!");
        }
    }
}

-(int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    
    return newAge;
}


@end
