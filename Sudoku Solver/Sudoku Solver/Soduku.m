//
//  Soduku.m
//  Maze
//
//  Created by Yongyang Nie on 11/7/16.
//  Copyright © 2016 Yongyang Nie. All rights reserved.
//

#import "Soduku.h"

@implementation Soduku

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.soduku = [NSMutableArray array];
    }
    return self;
}

-(void)solvePuzzle{
    
}

#pragma mark - Helper

-(struct SKPoint)makePointx:(int)x y:(int)y{
    struct SKPoint point;
    point.x = x;
    point.y = y;
    return point;
}

@end
