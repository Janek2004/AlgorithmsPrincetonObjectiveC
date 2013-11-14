//
//  UDGraph.h
//  Algorithms
//
//  Created by Janusz Chudzynski on 11/12/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UDGraph : NSObject
//create a graph with N edges
-(instancetype)initWithVertices:(unsigned int)N;
-(void)addEdgeFrom:(int) v to:(int)w;
-(NSArray *)verticesAdjacentTo:(int)v;
-(NSString *)description;

@property(readonly)int numberOfVertices;
@property(readonly)int numberOfEdges;



@end
