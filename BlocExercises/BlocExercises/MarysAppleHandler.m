//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;

    if (dollars < 5) {
        itemToReturn = @"get out of my store";
    } else if (dollars < 6) {
        itemToReturn = @"have some gum";
    } else if (dollars < 7) {
        itemToReturn = @"have an apple";
    } else if (dollars < 1001) {
        itemToReturn = @"have an Apple computer";
    } else if (dollars < 1000000001) {
        itemToReturn = @"have The Big Apple";
    }
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    
    NSUInteger cost = (self.getsDiscount) ? 18 : 24;
    
    return cost;
}

@end
