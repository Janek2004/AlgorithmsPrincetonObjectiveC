//
//  DepthFirstSearch.h
//  Algorithms
//
//  Created by Janusz Chudzynski on 11/12/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UDGraph;
@interface DepthFirstSearch : NSObject
-(NSArray *)searchForVerticesConnectedTo:(int)vertex inGraph:(UDGraph *) graph;
-(BOOL)marked:(int)vertex1;
@property (nonatomic)  unsigned int count;


@end
