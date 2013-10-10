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

-(instancetype)init{
    self = [super init];
    if(self)
    {

    }
    return self;
}

-(void)insert:(Node *) n{

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
        NSLog(@"Printing: %d",temp.value);
        temp = temp.next;

    }
}


-(void)remove:(Node *)n;{
    
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

-(BOOL)isEmpty;{

    
    return self.firstNode.next ==nil;
    
}


@end
