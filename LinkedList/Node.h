//
//  Node.h
//  LinkedList
//
//  Created by Janusz Chudzynski on 10/10/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
@property(nonatomic,strong)Node * next;
@property id value;

@end
