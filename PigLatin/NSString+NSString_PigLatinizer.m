//
//  NSString+NSString_PigLatinizer.m
//  PigLatin
//
//  Created by Mike Cameron on 2018-04-13.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "NSString+NSString_PigLatinizer.h"

@implementation NSString (NSString_PigLatinizer)

-(NSString *)stringByPigLatinization{
    
    // take string and break into array of strings - FIRST ARRAY
    
    //iterate over array making a new array of strings SECOND MUTABLE ARRAY
    
    //if first char is vowel append "ay"
    
    //if first char is consonant find first vowel, remove first consonant/s, append, append "ay"
    
    //make string from array
    
    
    //make Arrays
    NSArray *startArray = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSMutableArray *changedArray = [NSMutableArray new];
    
    //make compare strings
    NSString *vowels = @"aeiou";
    NSString *consonants = @"bcdfghjklmnpqrstvwyxz";

    NSMutableString *suffix = [NSMutableString new];
    NSMutableString *shorty = [NSMutableString new];
    
    for (NSString *word in startArray) {
        BOOL consonant = YES;
            int index = 1;
        if ([vowels containsString:[word substringToIndex:1]]) {
            NSString *pigged = [word stringByAppendingString:@"ay"];
            [changedArray addObject:pigged];
        } else do {
            suffix = [[word substringToIndex:index] mutableCopy];
            shorty = [[word substringFromIndex:index] mutableCopy];
            if (([shorty length] > 0) && [vowels containsString:[shorty substringToIndex:1]]) {
                consonant = NO;
            }
            index++;
            


        }while (consonant);
        suffix = [[suffix stringByAppendingString:@"ay"] mutableCopy];
        shorty =[[shorty stringByAppendingString:suffix] mutableCopy];
        [changedArray addObject:shorty];
        suffix = @"";
        shorty = @"";

    }
//            NSLog(@"%@", changedArray);
    NSString *output = [changedArray componentsJoinedByString:@" "];
    
    return output;
}
//            NSMutableString *suffix = [NSMutableString new];
//            NSString *shorty = [word substringFromIndex:1];
//
//
//            [suffix appendString:[word substringToIndex:1]];
//            [suffix appendString:@"ay"];
//
//            NSString *pigged = [shorty stringByAppendingString:suffix];
//
@end
