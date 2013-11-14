//
//  ShuffleSort.m
//  Algorithms
//
//  Created by Janusz Chudzynski on 10/24/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import "ShuffleSort.h"

@implementation ShuffleSort
-(NSArray *)sort:(NSMutableArray *)array;{
    for (int i=0;i<array.count;i++){
         int r = arc4random()%(i+1);
        //exchange i and i
        [self swap:i and:r inArray:array];
    }
    
    return array;
}

-(void)swap:(unsigned long)i and:(unsigned long)j inArray:(NSMutableArray *)array{
    id swap = array[i];
    array[i] = array[j];
    array[j]= swap;
    
}



@end
