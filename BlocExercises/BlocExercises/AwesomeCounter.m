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
    
    for (number = number; number < otherNumber; number++) {
        [stringWithNumbersBetweenNumber appendString:(@"%ld", number)];
    }
    return stringWithNumbersBetweenNumber;
}

@end
