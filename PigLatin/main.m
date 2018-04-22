//
//  main.m
//  PigLatin
//
//  Created by Mike Cameron on 2018-04-13.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+NSString_PigLatinizer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSString *testString = @"this program behaves strangely and we should figure out how come";
        NSLog(@"%@",[testString stringByPigLatinization]);

        
    }
    return 0;
}
