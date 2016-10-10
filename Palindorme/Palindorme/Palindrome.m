//
//  Class.m
//  CS_Palindorme
//
//  Created by Yongyang Nie on 9/23/16.
//  Copyright © 2016 Yongyang Nie. All rights reserved.
//

#import "Palindrome.h"

@implementation Palindrome

-(BOOL)isPalindrome:(int)x{
    
    int digits = [self digits:x];
    
    for (int i = 1; i <= digits / 2; i ++) {
        
        if (x / [self pow:10 exponent:i] != x / [self pow:10 exponent:digits - i]) {
            return NO;
        }
    }
    
    return YES;
}

@end
