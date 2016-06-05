//
//  DieLabel.h
//  FarklePro
//
//  Created by Mohamed Ayadi on 6/5/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//
#import "DieLabel.h"
#import <UIKit/UIKit.h>
@class DieLabel;
@protocol DieLabelDelegate <NSObject>

-(void)updateDie:(DieLabel *)die;

@end
@interface DieLabel : UILabel <DieLabelDelegate>
@property id<DieLabelDelegate>delegate;
@property BOOL firstRoll;
-(void)roll;

@end
