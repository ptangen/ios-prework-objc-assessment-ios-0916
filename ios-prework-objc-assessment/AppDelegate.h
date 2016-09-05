//
//  AppDelegate.h
//  ios-prework-objc-assessment
//
//  Created by Joel Bell on 5/23/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// generateArrayOfNumbers, which returns an NSArray
- (NSArray *)generateArrayOfNumbers;

// generateArrayOfLetters, which returns an NSArray
- (NSArray *) generateArrayOfLetters;

// generateNumbersAndLettersDictionaryWithNumbers:letters:, which takes as arguments numbersArray and lettersArray and returns an NSDictionary
- (NSDictionary *) generateNumbersAndLettersDictionaryWithNumbers:(NSArray *)numbers letters:(NSArray *) letters;

/* @[@"a",
 @"b",
 @"c",
 @"d",
 @"e",
 @"f",
 @"g",
 @"h",
 @"i",
 @"j",
 @"k",
 @"l",
 @"m",
 @"n",
 @"o",
 @"p",
 @"q",
 @"r",
 @"s",
 @"t",
 @"u",
 @"v",
 @"w",
 @"x", 
 @"y", 
 @"z" ] */

@end

