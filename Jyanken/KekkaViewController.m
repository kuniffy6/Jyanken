//
//  KekkaViewController.m
//  Jyanken
//
//  Created by 澤田 晋寛 on 2013/05/28.
//  Copyright (c) 2013年 myname. All rights reserved.
//

#import "KekkaViewController.h"
#import "JyankenModel.h"

@interface KekkaViewController ()

@end

@implementation KekkaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    switch (self.myHand) {
        case HAND_ROCK:
            self.myHandLabel.text = @"ぐー";
            break;
        case HAND_SCISSORS:
            self.myHandLabel.text = @"ちょき";
            break;
        case HAND_PAPER:
            self.myHandLabel.text = @"ぱー";
            break;
        default:
            self.myHandLabel.text = @"ぐーちょきぱー";
            break;
    }
    
    srand((unsigned)time(NULL));
    int yourHand = random() % 3;
//    NSLog(@"今回の乱数は%d",yourHand);
    switch (yourHand) {
        case HAND_ROCK:
            self.yourHandLabel.text = @"ぐー";
            break;
        case HAND_SCISSORS:
            self.yourHandLabel.text = @"ちょき";
            break;
        case HAND_PAPER:
            self.yourHandLabel.text = @"ぱー";
            break;
        default:
            self.yourHandLabel.text = @"ぐーちょきぱー";
            break;
    }
    
    int result = [JyankenModel doJyanken:self.myHand vs:yourHand];
    switch (result) {
        case RESULT_WIN:
            self.kekkaLabel.text = @"あなたさまのしょうりです";
            break;
        case RESULT_DRAW:
            self.kekkaLabel.text = @"ひきわけ";
            break;
        case RESULT_LOSE:
            self.kekkaLabel.text = @"あなたのまけよ";
            break;
        default:
            self.kekkaLabel.text = @"こんなことはあってはいけない";
            break;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
