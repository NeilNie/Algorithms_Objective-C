//
//  main.m
//  Radix Sort
//
//  Created by Yongyang Nie on 1/6/17.
//  Copyright © 2017 Yongyang Nie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "RadixSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        for (int i = 0; i < 3; i++) {
//            [RadixSort beginExperiment];
//            NSLog(@"ended");
//        }
        
        NSLog(@"begin creating array");
        NSMutableArray *numbers  = [NSMutableArray array];
        while (numbers.count < 100000000) {
            long x = arc4random()%100000000 * 10;
            [numbers addObject:[NSNumber numberWithLong:x]];
        }
        
        NSDate *method2Start = [NSDate date];
        
        NSLog(@"begin sorting");
        
        [RadixSort radixSort:numbers];
        
        NSDate *method2Finish = [NSDate date];
        NSTimeInterval executionTime2 = [method2Finish timeIntervalSinceDate:method2Start];
        NSLog(@"%f", executionTime2);
    }
    return 0;
}
