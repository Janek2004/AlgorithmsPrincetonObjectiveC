//
//  UDGraph.m
//  Algorithms
//
//  Created by Janusz Chudzynski on 11/12/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//  Edge from E to C

#import "UDGraph.h"

@implementation UDGraph{

@private
    NSMutableArray * vertices;
}

-(instancetype)initWithVertices:(unsigned int)N;{
   self = [super init];
    if(self){
        vertices = [[NSMutableArray alloc]initWithCapacity:N];
        for(int i=0;i<N;i++){
            [vertices addObject:[NSNull null]];
        }
        _numberOfVertices = N;
     }
    return self;
}
-(void)addEdgeFrom:(int) v to:(int)w;
{
    NSMutableSet * setV;
    NSMutableSet * setW;
    if(vertices[v]!=[NSNull null]){
        setV = vertices[v];
    }
    else{
        setV= [NSMutableSet new];
    }
    
    if(vertices[w]!=[NSNull null]){
        setW = vertices[w];
    }
    else{
       setW= [NSMutableSet new];
    }
    
    [setW addObject: [NSNumber numberWithInteger:v]];
    [setV addObject: [NSNumber numberWithInteger:w]];
    
    vertices[v] = setV;
    vertices[w] = setW;

    
}
-(NSArray *)verticesAdjacentTo:(int)v;
{
    return [vertices[v]allObjects];
}
-(NSString *)description;{

    NSMutableString *s = [NSMutableString new];
    for(int i=0;i<vertices.count;i++){
        [s appendString:[NSString stringWithFormat:@" \n Vertice: %d",i]];
        if([vertices[i] isKindOfClass:[NSMutableSet class]]){
            [vertices[i] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
              [s appendString:[NSString stringWithFormat:@"    \nAdjacent: %@",obj]];
            }];
         }
    }
    return s;
}

@end
