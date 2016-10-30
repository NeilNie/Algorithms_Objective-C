//
//  main.m
//  Queue
//
//  Created by Yongyang Nie on 10/10/16.
//  Copyright © 2016 Yongyang Nie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Queue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Queue *queue = [[Queue alloc] init];
        [queue enqueue:@5];
        [queue printQueue];
        [queue enqueue:@10];
        [queue printQueue];
        [queue enqueue:@40];
        [queue printQueue];
        [queue dequeue];
        [queue printQueue];
    }
    return 0;
}
