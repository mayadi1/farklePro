//
//  ViewController.m
//  FarklePro
//
//  Created by Mohamed Ayadi on 6/5/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"
@interface ViewController ()<DieLabelDelegate>
@property (weak, nonatomic) IBOutlet UILabel *dieLabel;
@property (strong, nonatomic) IBOutletCollection(DieLabel) NSArray *labelArray;
@property NSMutableArray *dice;
@property BOOL firstRoll;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tapedLabelNow =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(labelClicked)];
    _dieLabel.userInteractionEnabled = YES;
    [self.dieLabel addGestureRecognizer:tapedLabelNow];
    
    self.firstRoll=YES;
    
 
    

}

-(void)updateDie:(DieLabel *)die{
   
    
    DieLabel *ptr =die;
    NSLog(@"this is what its adding %@", ptr.text);
    
    
    
self.dice= [[NSMutableArray alloc] init];
  
    [self.dice addObject:ptr];
    
    
    
    
}

- (IBAction)onRollButtonPressed:(id)sender {
    
    if(self.firstRoll==YES){
        
        for(DieLabel *myDie in self.labelArray){
            [myDie roll];
            myDie.delegate=self;

        }
        
        
        self.firstRoll =NO;
    }else{
        
        for(DieLabel *myDie in self.labelArray){
            
            for(DieLabel *myDie2 in self.dice){
                
                if(myDie !=myDie2) {
                    
                    [myDie roll];
                    myDie.delegate=self;

                }
            }
            
        }
        
        
    }
}
    
    
    
    
//    
//    for(DieLabel *myDie in self.labelArray){
//     
//        UILabel *ptr =self.dice[0];
//        
//        if(myDie != ptr){
//           [myDie roll];
//             myDie.delegate=self;
//        }
//        
//            
//        
//        
//        
//    
//        
//    }
    


    
    

    

-(void)labelClicked{
    
   // NSLog(@"okay I am clicked");
    
}



@end
