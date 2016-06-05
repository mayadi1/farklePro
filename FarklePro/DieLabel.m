//
//  DieLabel.m
//  FarklePro
//
//  Created by Mohamed Ayadi on 6/5/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "DieLabel.h"


@implementation DieLabel

- (id) initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    
    UITapGestureRecognizer *tapRecognizer =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(labelClicked)];
    self.userInteractionEnabled = YES;
    self.firstRoll=YES;
    [self addGestureRecognizer:tapRecognizer];
    return self;
    
    
}


-(void)roll{
    
    
    if([self isEnabled]){
        
        
        
        int i = arc4random_uniform(6);
        self.text=[NSString stringWithFormat:@"%i",i+1];
        
    }
    
    
        
}

-(void)labelClicked{
    [self setEnabled:NO];
    
    self.backgroundColor =[UIColor greenColor];
    [self.delegate updateDie:self];
    
    
    
}
@end
