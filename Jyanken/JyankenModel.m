//
//  JyankenModel.m
//  Jyanken
//
//  Created by 澤田 晋寛 on 2013/05/28.
//  Copyright (c) 2013年 myname. All rights reserved.
//

#import "JyankenModel.h"

@implementation JyankenModel

+ (int)doJyanken:(int)myHand vs:(int)yourHand{
    if (myHand == yourHand) {
        return RESULT_DRAW;
    }else{
        switch (myHand) {
            case HAND_ROCK:
                if(yourHand == HAND_SCISSORS){
                    return RESULT_WIN;
                }
                break;
            case HAND_SCISSORS:
                if(yourHand == HAND_PAPER){
                    return RESULT_WIN;
                }
                break;
            case HAND_PAPER:
                if(yourHand == HAND_ROCK){
                    return RESULT_WIN;
                }
                break;
        }
        return RESULT_LOSE;
    }
}

@end
