//
//  Queue.m
//  Algorithms
//
//  Created by Janusz Chudzynski on 10/23/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import "Queue.h"
#import "LinkedList.h"

@interface Queue(){
    BOOL linkedListImplementation;
    
}
@property (nonatomic,strong)LinkedList * linkedList;
@property (nonatomic,strong)NSMutableArray * array;

 @end

@implementation Queue

-(id)initWithLinkedList{
    self = [super init];
    if(self){
        _linkedList = [[LinkedList alloc]init];
         linkedListImplementation = YES;
    }
    return  self;
}

-(id)initWithArray{
    self = [super init];
    if(self){
       linkedListImplementation = NO;
        _array = [NSMutableArray new];
    }
    return  self;
}


-(void)enqueue:(id)element{
    if(linkedListImplementation){
        [_linkedList insertFirst:element];
    }
    else{
        [_array insertObject:element atIndex:0];
    }
}

-(void)deque;{
    if(linkedListImplementation){
        [_linkedList removeLastNode];
    }
    else{
        [_array removeLastObject];
    }
}
-(unsigned long)size{
    if(linkedListImplementation){
        
        return -1;
    }
    else{
        return _array.count;
    }
}




@end
