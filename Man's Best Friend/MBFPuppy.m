//
//  MBFPuppy.m
//  Man's Best Friend
//
//  Created by Tarrant Cutler on 2/7/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import "MBFPuppy.h"

@implementation MBFPuppy

-(void)givePuppyEyes
{
    NSLog(@":(");
}

-(void) bark
{
    [super bark];
    NSLog(@"Yip Yip");
    
    [self givePuppyEyes];
}

@end
