//
//  FPButton.h
//  Final Project
//
//  Created by Arek Bolton on 4/14/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FPButtonModel.h"

@interface FPButton : UIButton

@property (nonatomic) int rank;

@property (nonatomic) CGFloat homeX;

@property (nonatomic) CGFloat homeY;

@property (nonatomic) BOOL empty;

-(void) setDefaultHome:(CGFloat)x yVal:(CGFloat)y;

@end
