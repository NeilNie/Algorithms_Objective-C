//
//  BinarySearch.m
//  Binary_Search
//
//  Created by Yongyang Nie on 10/14/16.
//  Copyright © 2016 Yongyang Nie. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

-(void)binarySearch:(NSArray <NSNumber *> *)array forObject:(NSNumber *)object{
    
    int first = 0;
    int last = (int)array.count - 1;
    int middle = (first + last) / 2;
    
    while (first <= last) {
        if ([array objectAtIndex:middle].intValue < object.intValue)
            first = middle + 1;
        else if ([array objectAtIndex:middle].intValue == object.intValue) {
            NSLog(@"%@ found at location %d.\n", object, middle + 1);
            break;
        }
        else
            last = middle - 1;
        
        middle = (first + last)/2;
    }
    if (first > last)
        NSLog(@"Not found! %@ is not present in the list.\n", object);
}

@end
