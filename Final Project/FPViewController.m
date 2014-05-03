//
//  FPViewController.m
//  Final Project
//
//  Created by Arek Bolton on 4/14/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "FPViewController.h"

@interface FPViewController ()

@end

@implementation FPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    FPButton *b;
    moveCounter = 0;
    
    [_scoreLabel setText:[NSString stringWithFormat:@"%i", moveCounter]];
    
    for(int j = 0; j<16; j++)
    {
        b = [_slidingCell objectAtIndex:j];
        
        if (b.tag == 1)
        {
            [b setDefaultHome:(CGFloat)50.0 yVal:(CGFloat)50.0];
        }
        else if (b.tag == 2)
        {
            [b setDefaultHome:(CGFloat)100.0 yVal:(CGFloat)50.0];
        }
        else if (b.tag == 3)
        {
            [b setDefaultHome:(CGFloat)150.0 yVal:(CGFloat)50.0];
        }
        else if (b.tag == 4)
        {
            [b setDefaultHome:(CGFloat)200.0 yVal:(CGFloat)50.0];
        }
        else if (b.tag == 5)
        {
            [b setDefaultHome:(CGFloat)50.0 yVal:(CGFloat)100.0];
        }
        else if (b.tag == 6)
        {
            [b setDefaultHome:(CGFloat)100.0 yVal:(CGFloat)100.0];
        }
        else if (b.tag == 7)
        {
            [b setDefaultHome:(CGFloat)150.0 yVal:(CGFloat)100.0];
        }
        else if (b.tag == 8)
        {
            [b setDefaultHome:(CGFloat)200.0 yVal:(CGFloat)100.0];
        }
        else if (b.tag == 9)
        {
            [b setDefaultHome:(CGFloat)50.0 yVal:(CGFloat)150.0];
        }
        else if (b.tag == 10)
        {
            [b setDefaultHome:(CGFloat)100.0 yVal:(CGFloat)150.0];
        }
        else if (b.tag == 11)
        {
            [b setDefaultHome:(CGFloat)150.0 yVal:(CGFloat)150.0];
        }
        else if (b.tag == 12)
        {
            [b setDefaultHome:(CGFloat)200.0 yVal:(CGFloat)150.0];
        }
        else if (b.tag == 13)
        {
            [b setDefaultHome:(CGFloat)50.0 yVal:(CGFloat)200.0];
        }
        else if (b.tag == 14)
        {
            [b setDefaultHome:(CGFloat)100.0 yVal:(CGFloat)200.0];
        }
        else if (b.tag == 15)
        {
            [b setDefaultHome:(CGFloat)150.0 yVal:(CGFloat)200.0];
        }
        else if (b.tag == 16)
        {
            [b setDefaultHome:(CGFloat)200.0 yVal:(CGFloat)200.0];
        }
        
        
        
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hit:(FPButton *)sender{
    
    FPButton *empBtn = [_slidingCell objectAtIndex:15];
    BOOL test = false;
    int newX = 0;
    int newY = 0;
    
    test = [FPButtonModel canMove:sender.frame.origin.x :sender.frame.origin.y :empBtn.frame.origin.x :empBtn.frame.origin.y];
    
    newX = (int) empBtn.frame.origin.x;
    newY = (int) empBtn.frame.origin.y;
    
    if (test == true){
        
        [UIView animateWithDuration:.75 animations:^{
            sender.frame = CGRectMake(empBtn.frame.origin.x, empBtn.frame.origin.y, sender.frame.size.width, sender.frame.size.height);
        }];
        empBtn.frame = CGRectMake(newX, newY, empBtn.frame.size.width, empBtn.frame.size.height);
        
        moveCounter++;
        [_scoreLabel setText:[NSString stringWithFormat:@"%i", moveCounter]];
    }
    else{}
    
    
}

- (IBAction)reset:(id)sender {
    
}

- (IBAction)solve:(FPButton*)sender {
    FPButton *btn;
    
    for (int j = 0; j < 16; j++) {
        btn = [_slidingCell objectAtIndex:j];
        
        if (btn.tag == 1)
        {
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 2)
        {
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 3)
        {
            //[b setDefaultHome:(CGFloat)150.0 yVal:(CGFloat)50.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 4)
        {
            //[b setDefaultHome:(CGFloat)200.0 yVal:(CGFloat)50.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 5)
        {
            //[b setDefaultHome:(CGFloat)50.0 yVal:(CGFloat)100.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 6)
        {
            //[b setDefaultHome:(CGFloat)100.0 yVal:(CGFloat)100.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 7)
        {
            //[b setDefaultHome:(CGFloat)150.0 yVal:(CGFloat)100.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 8)
        {
            //[b setDefaultHome:(CGFloat)200.0 yVal:(CGFloat)100.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 9)
        {
            //[b setDefaultHome:(CGFloat)50.0 yVal:(CGFloat)150.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 10)
        {
            //[b setDefaultHome:(CGFloat)100.0 yVal:(CGFloat)150.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 11)
        {
            //[b setDefaultHome:(CGFloat)150.0 yVal:(CGFloat)150.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 12)
        {
            //[b setDefaultHome:(CGFloat)200.0 yVal:(CGFloat)150.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 13)
        {
            //[b setDefaultHome:(CGFloat)50.0 yVal:(CGFloat)200.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 14)
        {
            //[b setDefaultHome:(CGFloat)100.0 yVal:(CGFloat)200.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 15)
        {
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else if (btn.tag == 16)
        {
            //[b setDefaultHome:(CGFloat)200.0 yVal:(CGFloat)200.0];
            btn.homeX = 50.0;
            btn.homeY = 50.0;
        }
        else{}
        
        
        [UIView animateWithDuration:.75 animations:^{
            btn.frame = CGRectMake(btn.homeX, btn.homeY, btn.frame.size.width, btn.frame.size.height);
        }];
    }
    
}
@end
