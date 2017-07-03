//
//  ViewController.m
//  2 Player Math
//
//  Created by Alex Wymer  on 2017-07-03.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()

@property (nonatomic) GameModel *gameModel;

@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player1Lives;

@property (weak, nonatomic) IBOutlet UILabel *player2Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Lives;

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.gameModel = [[GameModel alloc] init];
    self.questionLabel.text = [self.gameModel outputQuestion];
    [self.questionLabel sizeToFit];
    self.answerLabel.text = @"Answer -";
}


- (IBAction)enterTapped:(UIButton *)sender {
    
    if (self.gameModel.GAMEOVER == YES) {
        self.questionLabel.text = @"GAME OVER";
    }
    
    if (self.gameModel.currentPlayer == self.gameModel.player1) {
        self.questionLabel.text = [self.gameModel outputQuestion];
        self.player1Score.text = [self.gameModel checkWithScore:self.gameModel.answer];
       // self.player1Lives.text = [self.gameModel checkWithLives:self.gameModel.answer];
        self.gameModel.currentPlayer = self.gameModel.player2;
    } else {
        self.questionLabel.text = [self.gameModel outputQuestion];
        self.player2Score.text = [self.gameModel checkWithScore:self.gameModel.answer];
       // self.player2Lives.text = [self.gameModel checkWithLives:self.gameModel.answer];
        self.gameModel.currentPlayer = self.gameModel.player1;
    }
    
    self.answerLabel.text = @"Answer -";
}



- (IBAction)numbersTapped:(UIButton *)sender {
    
  //  NSString *userGuess = [self.answerLabel.text stringByAppendingString:[sender currentTitle]];
    NSString *userGuess = [sender currentTitle];
    
    [self.answerLabel setText:userGuess];
    [self.gameModel checkWithScore:[userGuess integerValue]];
   // [self.gameModel checkWithLives:[userGuess integerValue]];
   
}


@end
