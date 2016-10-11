//
//  main.m
//  Linked_List
//
//  Created by Yongyang Nie on 10/10/16.
//  Copyright © 2016 Yongyang Nie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"//b

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        LinkedList *list = [[LinkedList alloc] init];
        [list addObject:@"one"];
        [list addObject:@"two"];
        [list addObject:@"three"];
        [list addObject:@"four"];
        NSLog(@"%i", [list count]);
        [list insert:@"five" atIndex:2];
        NSLog(@"%i", [list count]);
    }
    return 0;
}
