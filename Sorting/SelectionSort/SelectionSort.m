//
//  SelectionSort.m
//  Algorithms
//
//  Created by Janusz Chudzynski on 10/23/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//  SelectionSort - Always Quadratic Time

#import "SelectionSort.h"

@implementation SelectionSort

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(NSArray *)sort:(NSMutableArray *)_array;{
    int imin =-1;
    for(int i=0;i<_array.count;i++)
    {
        //finding min
        imin=i;
        for(int j=i+1;j<_array.count;j++)
        {
            //Comparing
            if(_array[imin]>_array[j])
            {
                imin = j;
            }
        }

        //swapping the element
        id swap = _array[imin];
        _array[imin] = _array[i];
        _array[i]= swap;
    
    }
    return _array;
}


@end
