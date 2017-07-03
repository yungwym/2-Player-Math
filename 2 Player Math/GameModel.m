//
//  GameModel.m
//  2 Player Math
//
//  Created by Alex Wymer  on 2017-07-03.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _player1 = [[Player alloc] initWithName:@"Player 1"];
        _player2 = [[Player alloc] initWithName:@"Player 2"];
        _currentPlayer = _player1;
//        _rightNum = arc4random_uniform(10) + 11;
//        _leftNum = arc4random_uniform(10) + 11;
       // _answer = _leftNum + _rightNum;
        
    }
    return self;
}

-(NSString *)outputQuestion {
    
    self.leftNum = arc4random_uniform(10) +11;
    self.rightNum = arc4random_uniform(10) +11;
    self.answer = self.leftNum + self.rightNum;
   
     return [NSString stringWithFormat:@" %@: What is %ld + %ld?", self.currentPlayer.name, self.leftNum, self.rightNum];
}

-(NSString *)checkWithScore:(NSInteger)inputAnswer {
    
    NSString *scoreString = [NSString stringWithFormat:@" %@ Score: %ld", self.currentPlayer.name, self.currentPlayer.score];
    
  
    if (self.answer == inputAnswer) {
        
        self.currentPlayer.score += 1;
        
    } else if (self.answer != inputAnswer) {
        
        NSLog(@"Wrong");
        nil;
    }
        
    return scoreString;
}

-(NSString *)checkWithLives:(NSInteger)inputAnswer {
 
    
    NSString *livesString = [NSString stringWithFormat:@"Lives: %ld", self.currentPlayer.lives];
    
  
    if (self.answer != inputAnswer) {
        self.currentPlayer.lives -= 1;
    } else {
        NSLog(@"Right");
        nil; 
    }
    return livesString;
}

-(BOOL)GAMEOVER {
    
    BOOL over = NO;
    
    if (self.player1.lives == 0 || self.player2.lives == 0) {
        over = YES;
    }
    return over;
}


@end
