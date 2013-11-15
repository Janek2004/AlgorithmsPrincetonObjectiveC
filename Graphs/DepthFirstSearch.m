//
//  DepthFirstSearch.m
//  Algorithms
//
//  Created by Janusz Chudzynski on 11/12/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import "DepthFirstSearch.h"
#import "UDGraph.h"

@interface DepthFirstSearch()
@property(nonatomic,strong)NSMutableArray * marked;

@end


@implementation DepthFirstSearch




-(NSArray *)searchForVerticesConnectedTo:(int)vertex inGraph:(UDGraph *) graph;{
    NSArray * vertices;
    self.marked =  [NSMutableArray new];
    for(int i=0; i< graph.numberOfVertices; i++)
    {
        [self.marked addObject:@0];
    }
    _count = 0;
    [self dfs:graph andVertex:vertex];

    return vertices;
}

-(void)dfs:(UDGraph *)graph andVertex:(int)vertex{
    //mark element as marked
    self.marked[vertex] =@1;
    for(NSNumber * i in [graph verticesAdjacentTo:vertex]){
        if([self.marked[i.integerValue] isEqual: @0]){
            [self dfs:graph andVertex:[i intValue]];
            _count ++;
                }
    }
    
}


-(BOOL)marked:(int)vertex1;{

    return [self.marked[vertex1] isEqualTo: @0];
}

-(unsigned int) count;{

    return _count;
}


@end
