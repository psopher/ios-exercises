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
    
     return  characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
//    NSMutableArray *characterDrinks = [[NSMutableArray alloc] init];
    NSMutableArray *characterDrinks = [NSMutableArray new];
    
    
    for (int i = 0 ; i < charactersArray.count ; i++){
        
        NSDictionary *character = charactersArray[i];
        [characterDrinks addObject:character[@"favorite drink"]];
//        [stringWithNumbersBetweenNumber appendString: [NSString stringWithFormat:@"%li", (long)i]];
        
//        NSArray *characterDrinks = @[character[@"favorite drink"], picard[@"favorite drink"]];
        
        
    }
    
//    NSDictionary *worf = charactersArray[0];
//    NSDictionary *picard = charactersArray[1];
    
//    NSArray *characterDrinks = @[worf[@"favorite drink"], picard[@"favorite drink"]];
    
    return characterDrinks;
}

- (NSArray *)arrayOfCarColors:(NSArray *)carArray {
    
    NSMutableArray *characterCars = [NSMutableArray new];
    
    for (int i = 0 ; i < carArray.count ; i++) {
        
        NSDictionary *character = carArray[i];
        [characterCars addObject:character[@"color"]];
    }
    
    return characterCars;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *picardDictionary = [characterDictionary mutableCopy];
    
    [picardDictionary setObject:@"A quote was not included." forKey:@"quote"];
    
    return picardDictionary;
}

@end


