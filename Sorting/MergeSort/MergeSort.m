//
//  MergeSort.m
//  Algorithms
//
//  Created by Janusz Chudzynski on 10/25/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import "MergeSort.h"
/* Plan
    Divide array into 2
    Sort
    Merge
 
 */
@interface MergeSort()
@property(nonatomic,strong)NSMutableArray * array;
@end

@implementation MergeSort


-(NSArray *)sort:(NSMutableArray *)array{
    _array = array;
    [self sort:_array fromLow:0 toHigh:_array.count];
    
    return _array;
}

-(NSArray *)mergeLow:(unsigned long)low andHigh:(unsigned long)high andMiddle:(unsigned long)mid inArray:(NSMutableArray*)array andHelperArray:(NSMutableArray *)helperArray{
    //copying elements
    for (unsigned long i = low; i<high;i++)
    {
        helperArray[i]= array[i];
    }
    
    //setting the j and j
    unsigned long i = low;
    unsigned long j = mid;

    for (unsigned long k=low; k<high; k++) {
        
        //i reaches the middle of the array, from now we can just copy all the elements from the subarray
        if(i>=mid){
            array[k] = helperArray[j++];
         
        }
        else if(j>=high){
            array[k] = helperArray[i++];
            }
        
        //here we need to compare two sides of the array. That's why we are passing a middle element.
        else if(helperArray[j]<helperArray[i]){
            array[k] = helperArray[j++];
          
        }
        else{
            array[k] = helperArray[i++];
          
        }
    }
    
    return array;
}

-(void)sort:(NSMutableArray *)array fromLow:(unsigned long)low toHigh:(unsigned long) high{
    //recursive condition fullfilled

    NSLog(@"High: %lu Low %lu ",high, low);
    if(high<=low)
    {
        
        return;
    }
    unsigned long middle = low + (high - low)/2;

    [self sort:array fromLow:low toHigh:middle];
    [self sort:array fromLow:middle +1 toHigh:high];

    [self mergeLow:low andHigh:high andMiddle:middle inArray:array andHelperArray:[array mutableCopy]];

}


-(void)swap:(unsigned long)i and:(unsigned long)j inArray:(NSMutableArray *)array{
    id swap = array[i];
    array[i] = array[j];
    array[j]= swap;
    
}
@end
