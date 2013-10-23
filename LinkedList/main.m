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
#import "Queue.h"
static void testQueue(){
 //testing Queue
    
 
}
static void testInsertionSort(){

}

static void testSelectionSort(){
    
}


static void testLinkedLists(){
    LinkedList *ll = [LinkedList new];
    [ll insert:@1];
    [ll insert:@2];
    [ll insert:@3];

    [ll insert:@5];
    [ll print];
    
    [ll remove:@3];
    [ll print];
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
     testLinkedLists();
     testQueue();
     testInsertionSort();
     testSelectionSort();
 
    }
    return 0;
}

