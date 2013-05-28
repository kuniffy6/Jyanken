//
//  KekkaViewController.h
//  Jyanken
//
//  Created by 澤田 晋寛 on 2013/05/28.
//  Copyright (c) 2013年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface KekkaViewController : UIViewController
@property int myHand;
@property (weak, nonatomic) IBOutlet UILabel *myHandLabel;
@property (weak, nonatomic) IBOutlet UILabel *yourHandLabel;
@property (weak, nonatomic) IBOutlet UILabel *kekkaLabel;
@end
