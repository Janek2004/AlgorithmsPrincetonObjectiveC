//
//  main.m
//  LinkedList
//
//  Created by Janusz Chudzynski on 10/10/13.
//  Copyright (c) 2013 UWF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "LinkedList.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...

        Node * node = [[Node alloc]init];
        node.value = 3;

        LinkedList *ll = [LinkedList new];
       
        Node *n = [Node new];
        
        
        n.value = 1;
        [ll insert:n];
        //[ll print];
        Node *n1 = [Node new];
        n1.value = 2;
        [ll insert:n1];
        //[ll print];
        [ll insert:node];
        
        [ll print];
    
        [ll remove:n1];
        [ll print];  
        
    }
    return 0;
}

