//
//  InsertionSort.m
//  Algorithms
//
//  Created by Janusz Chudzynski on 10/23/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

-(NSArray *)sort:(NSMutableArray *)array{

    for(int i=1;i<array.count;i++)
    {
        //running backwards
        for (int j=i; j>0; j--) {
            //swapping
            if(array[i-1]>array[i])
            {
                [self swap:j and:j-1 inArray:array];
            }

        }
    }
    return array;
}

-(void)swap:(unsigned int)i and:(unsigned long)j inArray:(NSMutableArray *)array{
    id swap = array[i];
    array[i] = array[j];
    array[j]= swap;

}

@end
