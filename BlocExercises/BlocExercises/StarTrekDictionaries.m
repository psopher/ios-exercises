//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    [characterDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop)
     
     NSString *favoriteDrink = characterDictionary[@"favorite drink"];
     if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]);
     
     return (@"%@", [characterDictionary[@"favorite drink"]]);
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *mutableCharactersArray = [charactersArray mutablecopy];
    
    mutableCharactersArray = @[ ];
    
    return @[];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return @{};
}

@end


