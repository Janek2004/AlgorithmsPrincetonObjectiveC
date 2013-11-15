//
//  BreadthFirstSearch.m
//  Algorithms
//
//  Created by Janusz Chudzynski on 11/14/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import "BreadthFirstSearch.h"
#import "UDGraph.h"
@interface BreadthFirstSearch()
    @property(nonatomic,strong)NSMutableArray * queue;
    @property(nonatomic,strong)NSMutableArray * marked;
    @property(nonatomic,strong)NSMutableArray * edgeTo;
@end

@implementation BreadthFirstSearch


-(NSArray *)searchForVerticesConnectedTo:(int)vertex inGraph:(UDGraph *) graph;{
    
    self.queue = [NSMutableArray new];
    self.marked = [NSMutableArray new];
    self.edgeTo = [NSMutableArray new];
    
    for(int i=0;i<graph.numberOfVertices;i++){
        [self.marked addObject:@0];
        [self.edgeTo addObject:@-1];
    }
    
    
    return nil;
}

-(void) bfs:(int)vertex inGraph:(UDGraph *) graph; {
    [self.queue addObject: [NSNumber numberWithInt:vertex]];
     self.marked[vertex] = @1;
    
    while(self.queue.count >0){
        //remove first element
        int vk = [self.queue[0]intValue];
        [self.queue removeObjectAtIndex:0];
        self.marked[vk] = @1;
        
        ///get adjacent
        NSArray * adj = [graph verticesAdjacentTo:vk];
        //put adjacent
        for(int i =0;i<adj.count;i++){
            if(![self.marked[[adj[i] integerValue]] isEqual:@1]){
                [self.queue addObject: adj[i]];
                 self.edgeTo[[adj[i] integerValue]] = [NSNumber numberWithInt:vk];

            }
        }
        
        
        
    }
}

@end
