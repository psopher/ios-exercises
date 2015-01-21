//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    NSInteger two = 2;
    
    NSInteger intNumber = [number integerValue];
    
    NSInteger numberTimesTwo = intNumber * two;
    
    return [NSNumber numberWithInt:numberTimesTwo];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *numbersBetween = [NSMutableArray new];
    if (number <= otherNumber) {
        for (int i = number; i <= otherNumber; i++) {
            [numbersBetween addObject:@(i)];
        }
    } else {
        for (int i = otherNumber; i < number; i++) {
            [numbersBetween addObject:@(i)];
        }
    }
    return numbersBetween;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSMutableArray *ascendingArray = [arrayOfNumbers mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    
    [ascendingArray sortUsingDescriptors:@[sortDescriptor]];
    
//    NSInteger returnValue = [ascendingArray[0] integerValue];
    
    return [ascendingArray[0] integerValue];
}

@end
