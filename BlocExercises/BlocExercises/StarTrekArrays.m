//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *arrayFromString = [characterString componentsSeparatedByString:@";"];
    return arrayFromString;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *stringFromArray = [characterArray componentsJoinedByString:@";"];
    return stringFromArray;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *mutableCharacterArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [mutableCharacterArray sortUsingDescriptors:@[sortDescriptor]];
    
    return mutableCharacterArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSMutableArray *mutableCharacterArray = [characterArray mutableCopy];
    
    NSPredicate *filterer = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    
    [mutableCharacterArray filterUsingPredicate:filterer];
    
    
    if (mutableCharacterArray.count == 0) {
        return NO;
    } else {
        return YES;
    }
}

@end
