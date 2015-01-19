//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableString *stringWithNumbersBetweenNumber = [@"" mutableCopy];
    if (number <= otherNumber) {
        for (NSInteger i = number; i <= otherNumber; i++) {
            [stringWithNumbersBetweenNumber appendString: [NSString stringWithFormat:@"%li", (long)i]];
        }
    } else {
        for (NSInteger i = otherNumber; i <= number; i++) {
            [stringWithNumbersBetweenNumber appendString: [NSString stringWithFormat:@"%li", (long)i]];
        }
    }
    
    return stringWithNumbersBetweenNumber;
}

@end

