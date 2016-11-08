//
//  Soduku.h
//  Maze
//
//  Created by Yongyang Nie on 11/7/16.
//  Copyright © 2016 Yongyang Nie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
#import "Stack.h"

//struct for x,y point/
struct SKPoint {
    int x;
    int y;
};

typedef enum SKObjectType {
    SKObject = 0,
} SKObjectType;

@interface Soduku : NSObject

/**Properties**/

@property (strong, nonatomic) id delegate;

//maze data, which is array of arrays containing char (NSString *)
@property (strong, nonatomic) NSMutableArray <NSMutableArray *> *soduku;

//stack used for depth first search
@property (strong, nonatomic) Stack *stack;

/**Methods**/

-(instancetype)init;

-(void)solvePuzzle;

@end

@protocol MazeDelegate <NSObject>

-(void)drawObjectAt:(struct SKPoint)point objectType:(SKObjectType)objectType;

@end
