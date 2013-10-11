//
//  LinkedList.m
//  LinkedList
//
//  Created by Janusz Chudzynski on 10/10/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import "LinkedList.h"
#import "Node.h"

@interface LinkedList()
@property (nonatomic,strong) Node * firstNode;
@property (nonatomic,strong) Node * lastNode;

@end



@implementation LinkedList

-(void)insertFirst:(id) value;{
    Node * n = [Node new];
    n.value = value;
    n.next= self.firstNode;
    self.firstNode = n;
    
}


-(instancetype)init{
    self = [super init];
    if(self)
    {

    }
    return self;
}

-(void)insert:(id)value{
    Node * n = [Node new];
    n.value = value;
    
    if(!self.firstNode){
        self.firstNode = n;
        self.lastNode = n;
        return;
    }

    else{
        self.lastNode.next = n;
        self.lastNode = n;
        return;
    }
}

-(void)print{
    Node * temp = self.firstNode;
    while(temp)
    {
        NSLog(@"Printing: %@",temp.value);
        temp = temp.next;

    }
}

-(void)removeLastNode{
    Node *cn = self.firstNode;
    while(cn){
        if(cn.next){
            cn = cn.next;
        }
        else{
            cn = nil;
        }
    }
}

-(void)remove:value{
    Node * n = [Node new];
    n.value = value;
    
    Node *cn = self.firstNode;
    if(cn.value == n.value){
        //remove first
        self.firstNode = self.firstNode.next;
    }

    while(cn)
    {
        if(cn.next.value == n.value)
        {
            cn.next =cn.next.next;
            break;
        }
        cn = cn.next;
    }
    
}

-(void)removeFirstNode{
    Node * n= self.firstNode.next;
    self.firstNode = n;
    
}

-(BOOL)isEmpty;{

    return self.firstNode == nil;
}


@end
