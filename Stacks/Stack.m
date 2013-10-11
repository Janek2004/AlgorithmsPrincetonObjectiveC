//
//  Stack.m
//  Algorithms
//
//  Created by sadmin on 10/10/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import "Stack.h"
#import "LinkedList.h"

@interface Stack()
    @property(nonatomic,strong) LinkedList * ll;
@end

@implementation Stack


-(instancetype) init
{
    self = [super init];
    if(self){
        _ll = [[LinkedList alloc]init];
    }
    return self;
}

-(void)push:(id)value{

    [_ll insertFirst:value];
}

-(void)pop:(id)value{
    [_ll removeFirstNode];
}
@end
