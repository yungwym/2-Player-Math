//
//  Player.h
//  2 Player Math
//
//  Created by Alex Wymer  on 2017-07-03.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic, assign) NSInteger score;
@property (nonatomic, assign) NSInteger lives;

- (instancetype)initWithName:(NSString *)name; 

@end
