//
//  ShellSort.h
//  Algorithms
//
//  Created by Janusz Chudzynski on 10/24/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShellSort : NSObject
-(unsigned long)getHFromN:(unsigned long)N;
-(NSArray *)sort:(NSMutableArray *)array;
@end
