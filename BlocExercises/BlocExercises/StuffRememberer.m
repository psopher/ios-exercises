//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.cArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.rememberFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    
//    StuffRememberer *returnArray = [StuffRememberer new];
    
//    return [returnArray rememberThisArrayForLater:_rememberArray];
    
    NSMutableArray *returnArray = _rememberArray;
    
    return returnArray;

//    return [@[_rememberArray] mutableCopy];
}

- (NSMutableArray *) arrayYouShouldCopy {
    NSMutableArray *returnArray = _cArray;
    
    return returnArray;
//    return [@[_cArray] mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    CGFloat returnFloat = _rememberFloat;
    return returnFloat;
}

@end