//
//  MergeSort.h
//  Algorithms
//
//  Created by Janusz Chudzynski on 10/25/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MergeSort : NSObject

-(NSArray *)sort:(NSMutableArray *)array;
-(NSArray *)mergeLow:(unsigned long)low andHigh:(unsigned long)high andMiddle:(unsigned long)mid inArray:(NSMutableArray*)array andHelperArray:(NSMutableArray *)helperArray;

-(void)sort:(NSMutableArray *)array fromLow:(unsigned long)low toHigh:(unsigned long) high;

@end
