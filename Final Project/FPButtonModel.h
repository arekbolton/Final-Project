//
//  FPButtonModel.h
//  Final Project
//
//  Created by Arek Bolton on 4/14/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FPButton.h"
@interface FPButtonModel : NSObject

+(BOOL) canMove : (int) xHit :(int) yHit : (int) xEmpty :(int) yEmpty;

+(int) findCell: (int) startX : (int) startY withArrayOfCells: (NSMutableArray*) cells;

@end
