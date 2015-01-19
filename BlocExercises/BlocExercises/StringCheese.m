//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favoriteCheeseStringWithCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return favoriteCheeseStringWithCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (cheeseRange.location == NSNotFound){

        return cheeseName;
    } else {
        
        return [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    }

}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        return [NSString stringWithFormat:@"%ld cheese", cheeseCount];
    } else {
        return [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
}

@end
