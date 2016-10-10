//
//  LinkListNode.m
//  Linked_List
//
//  Created by Yongyang Nie on 10/10/16.
//  Copyright © 2016 Yongyang Nie. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

#pragma mark - Constructor

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

#pragma mark - Public methods

-(BOOL)isEmpty{
    return self.head == nil;
}

//return first node in linked list(head).
-(LinkedListNode *)first{
    return self.head;
}

//return last node in linked list
-(LinkedListNode *)last{
    
    LinkedListNode *node = self.head;
    if (node != nil && node.next != nil) {
        node = node.next;
    }
    return node;
}

//add object to linked list
-(void)addObject:(id)object{
    
    LinkedListNode *node = [[LinkedListNode alloc] initWithObject:object];
    if ([self last]) {
        node.previous = [self last];
        [self last].next = node;
    }
}

@end


