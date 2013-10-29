//
//  QuickSort.m
//  Algorithms
//
//  Created by Janusz Chudzynski on 10/29/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort
/*
    Plan:
 Shuffle the array
 Partition array j
    no larger to the left
    no smaller to the right
 Sort each piece recursively
 */

-(NSArray *)sort:(NSMutableArray *)array{
    //shuffle
    unsigned int j =(unsigned int) array.count;
    j=j-1;
    
    [self sort:array low:0 andHigh: (unsigned int)j];
    
    return array;
}


-(void)sort:(NSMutableArray *)array low:(unsigned int)low andHigh:(unsigned int)high
{
    if(high<=low)return;
    unsigned int j = [self partitionLow:low andHigh:high array:array];
   
    [self sort:array low:low andHigh:j-1];
    [self sort:array low:j+1 andHigh:high];
}

-(unsigned int)partitionLow:(unsigned int)low andHigh:(unsigned int)high array:(NSMutableArray *)array{
   
    unsigned int i = low;
    unsigned int j=high +1;

    while(true){
        while(array[++i]<array[low]){
            if(i==high)break;
        }
        
        while(array[--j]>array[low]){
            if(j==low)break;
        }
        if(i>=j)break;
        [self swap:i and:j inArray:array];
    }

    [self swap:low and:j inArray:array];
   
    return j;
    
   }

-(void)swap:(unsigned int)i and:(unsigned int)j inArray:(NSMutableArray *)array{
    if(i == j) return;
    id swap = array[i];
    array[i] = array[j];
    array[j]= swap;
    
}

@end
