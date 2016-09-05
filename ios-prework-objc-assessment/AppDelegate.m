//
//  AppDelegate.m
//  ios-prework-objc-assessment
//
//  Created by Joel Bell on 5/23/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSArray *numbersArray = [self generateArrayOfNumbers];
    NSLog(@"%@", numbersArray);
    
    NSArray *lettersArray = [self generateArrayOfLetters];
    NSLog(@"%@", lettersArray);
    
    NSDictionary *alphabetDictionary = [self generateNumbersAndLettersDictionaryWithNumbers:numbersArray letters:lettersArray];
    NSLog(@"%@", alphabetDictionary);
    
    //Reassign numbersArray to the keys from alphabetDictionary. Make a mutable copy of lettersArray called mutableLettersArray, remove all objects from this array, and assign to it all the values retrieved by iterating over alphabetDictionary. With a single NSLog, print both numbersArray and mutableLettersArray to the console, separated by a new line.
    numbersArray = [alphabetDictionary allKeys];
    NSMutableArray *mutableLettersArray = [lettersArray mutableCopy];
    [mutableLettersArray removeAllObjects];
    mutableLettersArray = [alphabetDictionary allValues];
    NSLog(@"%@\n%@", numbersArray, mutableLettersArray);
    
    
    return YES;
}

- (NSArray *)generateArrayOfNumbers{
    NSMutableArray *results =  [[NSMutableArray alloc] init];
    for(NSInteger i=1; i <= 26; i++){
        [results addObject:[NSNumber numberWithInt:i]];
    }
    return results;
}

// This method should return an array which contains the 26 letters of the English alphabet, lowercase and in ascending order.
- (NSArray *) generateArrayOfLetters{
    NSMutableArray *results =  [[NSMutableArray alloc] init];
    for (char a = 'a'; a <= 'z'; a++)
    {
        [results addObject:[NSString stringWithFormat:@"%c", a]];
    }
    return results;
}

// This method should return a dictionary that contains key-value pairs of numbers as keys and their corresponding letters as values by using the two provided arguments.
- (NSDictionary *) generateNumbersAndLettersDictionaryWithNumbers:(NSArray *)numbers letters:(NSArray *) letters{
    NSMutableDictionary *results =  [NSMutableDictionary dictionary];
    for(NSInteger i = 0; i < [numbers count]; i++){
        results[numbers[i]] = letters[i];
    }
    return results;
}

@end
