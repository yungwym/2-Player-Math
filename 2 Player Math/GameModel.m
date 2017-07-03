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
        _rightNum = arc4random_uniform(10) + 11;
        _leftNum = arc4random_uniform(10) + 11; 
        
    }
    return self;
}

-(NSString *)outputQuestion {
    
    return [NSString stringWithFormat:@" %@: What is %ld + %ld?", self.currentPlayer, self.leftNum, self.rightNum];
    
}

-(NSString *)checkWithScore:(NSInteger)inputAnswer {
    
    NSInteger answer = self.leftNum + self.rightNum;
    NSString *scoreString = [NSString stringWithFormat:@" %@ Score: %ld", self.currentPlayer, self.currentPlayer.score];
    
    if (answer == inputAnswer) {
        self.currentPlayer.score += 1;
    }
    return scoreString;
}

-(NSString *)checkWithLives:(NSInteger)inputAnswer {
 
    NSInteger answer = self.leftNum + self.rightNum;
    NSString *livesString = [NSString stringWithFormat:@"Lives: %ld", self.currentPlayer.lives];
    
    if (answer != inputAnswer) {
        self.currentPlayer.lives -= 1;
    }
    return livesString;
}

-(BOOL)GAMEOVER {
    
    BOOL GAMEON = YES;
    
    if (self.currentPlayer.lives == 0) {
        GAMEON = NO;
    }
    return GAMEON;
}


@end
