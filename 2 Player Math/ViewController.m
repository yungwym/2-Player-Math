//
//  ViewController.m
//  2 Player Math
//
//  Created by Alex Wymer  on 2017-07-03.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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
}


- (IBAction)enterTapped:(UIButton *)sender {
}



- (IBAction)numbersTapped:(UIButton *)sender {
}


@end
