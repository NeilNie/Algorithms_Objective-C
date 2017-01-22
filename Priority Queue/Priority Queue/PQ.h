//
//  PQ.h
//  Map Routing - Dijkstra
//
//  Created by Yongyang Nie on 1/16/17.
//  Copyright © 2017 Yongyang Nie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Heap.h"
#import "Vertex.h"

@interface PQ : NSObject

//instance variables

@property (nonatomic) int count;

//constructor

-(instancetype)initWithObjects:(NSArray *)objects;

//instance methods

-(void)changePriority:(int)index toValue:(int)value;

-(int)count;

-(BOOL)isEmpty;

-(int)peek;

-(void)enqueue:(Vertex *)x;

-(Vertex *)dequeue;

-(void)print;

@end
