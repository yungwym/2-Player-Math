//
//  Player.m
//  2 Player Math
//
//  Created by Alex Wymer  on 2017-07-03.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        
        _name = name;
        _score = 0;
        _lives = 3; 
    }
    return self;
}

@end
