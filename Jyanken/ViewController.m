//
//  ViewController.m
//  Jyanken
//
//  Created by 澤田 晋寛 on 2013/05/28.
//  Copyright (c) 2013年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    NSLog(@"%d%d%d",[defaults integerForKey:@"WIN_COUNT"],[defaults integerForKey:@"LOSE_COUNT"],[defaults integerForKey:@"DRAW_COUNT"]);
    if ([defaults integerForKey:@"WIN_COUNT"]+[defaults integerForKey:@"LOSE_COUNT"]+[defaults integerForKey:@"DRAW_COUNT"]==0 ) {
        self.continueBtn.hidden = YES;
        self.continueBtn.enabled = NO;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //はじめからがおされたら、きろくをしょきかする
    if([segue.identifier isEqualToString:@"resetSeque"]){
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults removeObjectForKey:@"WIN_COUNT"];
        [defaults removeObjectForKey:@"DRAW_COUNT"];
        [defaults removeObjectForKey:@"LOSE_COUNT"];
    }
}


@end
