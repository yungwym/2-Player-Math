//
//  GameModel.h
//  2 Player Math
//
//  Created by Alex Wymer  on 2017-07-03.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;
@property (nonatomic) Player *currentPlayer;

@property (nonatomic) NSInteger answer;
@property (nonatomic) NSInteger rightNum;
@property (nonatomic) NSInteger leftNum;

-(NSString *)outputQuestion;
-(NSString *)checkWithScore:(NSInteger)inputAnswer;
-(NSString *)checkWithLives:(NSInteger)inputAnswer;

-(BOOL)GAMEOVER;

@end
