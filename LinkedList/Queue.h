//
//  Queue.h
//  Algorithms
//
//  Created by Janusz Chudzynski on 10/23/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject
-(void)enqueue:(id)element;
-(void)deque;
-(unsigned long)size;
-(id)initWithLinkedList;
-(id)initWithArray;

@end
