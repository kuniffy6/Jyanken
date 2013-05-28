//
//  JyankenModel.h
//  Jyanken
//
//  Created by 澤田 晋寛 on 2013/05/28.
//  Copyright (c) 2013年 myname. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JyankenModel : NSObject

#define HAND_ROCK 0
#define HAND_SCISSORS 1
#define HAND_PAPER 2

#define RESULT_WIN 0
#define RESULT_DRAW 1
#define RESULT_LOSE 2

+ (int)doJyanken:(int)myHand vs:(int)yourHand;

@end
