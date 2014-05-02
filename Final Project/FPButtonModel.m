//
//  FPButtonModel.m
//  Final Project
//
//  Created by Arek Bolton on 4/14/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "FPButtonModel.h"

@implementation FPButtonModel

#pragma Motion Determinate

+(BOOL) canMove : (int) xHit :(int) yHit :(int) xEmpty :(int) yEmpty
{
    BOOL xTest = false;
    BOOL yTest = false;

    //test x coordinates
    if (xHit == xEmpty) {
        xTest = true;
    }
    else if (xHit >= (xEmpty - 50) && xHit <= (xEmpty + 50)) {
        xTest = true;
    }
    else{}
    
    //test y coordinates
    if (yHit == yEmpty) {
        yTest = true;
    }
    else if (yHit >= (yEmpty - 50) && yHit <= (yEmpty + 50)) {
        yTest = true;
    }
    else{}
    
    //determine if can move in any direction
    if (xTest == true && yTest == true) {
        return true;
    }
    else{
        return false;
    }
}

+(int) findCell:(int)startX :(int)startY withArrayOfCells: (NSMutableArray*) cells
{
    /*
    int j=0;
    while (startX != [[cells objectAtIndex:j] getXPosition] && startY != [[cells objectAtIndex:j] getYPosition]) {
        return j;
    }
    */
    return 0;
    
}

@end
