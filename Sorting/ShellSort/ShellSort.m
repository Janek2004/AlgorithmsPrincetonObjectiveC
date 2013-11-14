//
//  ShellSort.m
//  Algorithms
//
//  Created by Janusz Chudzynski on 10/24/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import "ShellSort.h"

@implementation ShellSort

-(NSArray *)sort:(NSMutableArray *)array;{
    
   unsigned long N = array.count;
   unsigned long h = 1;

    //Selecting the h
    h =  [self getHFromN:N];
    while(h>=1)
    {
        //this part is starting  from the h element
        for(unsigned long i=h;i<N;i++){
            //Insertion Sort
            for(unsigned long j =i;j>=h;j-=h){
                if(array[j]<array[j-h])
                {
                    [self swap:j and:j-h inArray:array];
                }
            }
        }
        h = h/3;
    }
    
    return array;
}

-(unsigned long)getHFromN:(unsigned long)N{
    int h =1;
    while(h<N/3){
        h = 3* h +1;
    }

    return h;
}

-(void)swap:(unsigned long)i and:(unsigned long)j inArray:(NSMutableArray *)array{
    id swap = array[i];
    array[i] = array[j];
    array[j]= swap;
    
}


@end
