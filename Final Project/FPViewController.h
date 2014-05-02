//
//  FPViewController.h
//  Final Project
//
//  Created by Arek Bolton on 4/14/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FPButton.h"
#import "FPButtonModel.h"

@interface FPViewController : UIViewController
{
    int moveCounter;
}

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property (strong, nonatomic) IBOutletCollection(FPButton) NSArray *slidingCell;

@property (strong, nonatomic) NSArray *buttonCells;


- (IBAction)hit:(id)sender;

- (IBAction)reset:(id)sender;

- (IBAction)solve:(id)sender;

@end
