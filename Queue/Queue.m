//
//  Queue.m
//  Queue
//
//  Created by Yongyang Nie on 10/10/16.
//  Copyright © 2016 Yongyang Nie. All rights reserved.
//

#import "Queue.h"

@interface Queue ()

//note: objects is private and you can implement it with linked list.
@property (strong, nonatomic) NSMutableArray *objects;

@end

@implementation Queue

- (instancetype)init{
    
    self = [super init];
    if (self) {
        self.objects = [NSMutableArray array];
    }
    return self;
}

-(void)dequeue{
    [self.objects removeObjectAtIndex:0];
}
-(void)enqueue:(id)object{
    [self.objects addObject:object];
}
-(NSUInteger)count{
    return [self.objects count];
}
-(BOOL)isEmpty{
    return [self.objects firstObject] == nil;
}

-(void)printQueue{
    NSLog(@"%@", self.objects);
}

@end
