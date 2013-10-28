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
#import "InsertionSort.h"
#import "SelectionSort.h"
#import "ShellSort.h"
#import "ShuffleSort.h"
#import "MergeSort.h"


static void testQueue(){
 //testing Queue
    
 
}
static void testInsertionSort(){
    InsertionSort *is = [InsertionSort new];
    NSArray * a = @[@14,@3,@5,@9];
    NSLog(@"Insertion Sort: %@",  [is sort:a.mutableCopy]);

}

static void testSelectionSort(){
    SelectionSort *is = [SelectionSort new];
    NSArray * a = @[@14,@3,@5,@9];
    NSLog(@"Selection Sort: %@",[is sort:a.mutableCopy]);

}

static void testShellSort(){
    ShellSort * ss =[ShellSort new];
 
    NSArray * a = @[@14,@3,@5,@9];
    NSLog(@"Shell Sort: %@",  [ss sort:a.mutableCopy]);
    a = @[@14,@3,@5,@9,@4,@11,@1];
    NSLog(@"Shell Sort: %@",  [ss sort:a.mutableCopy]);
}

static void testShuffleSort(){
    ShuffleSort * ss =[ShuffleSort new];
    NSArray * a = @[@1,@2,@5,@9,@14,@18,@121];
    NSLog(@"Shell Sort: %@",  [ss sort:a.mutableCopy]);
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

static void testMergeSort(){
    MergeSort *is = [MergeSort new];
    NSArray * a = @[@2,@3,@11,@14,@3,@5,@9,@22];
    NSArray * result = [is sort:a.mutableCopy];
    NSLog(@"Merge Sort: %@",result);
    
}


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        //change the number to execute a test:

        int test = 6;
        if(test==0){
            testLinkedLists();
        }
       
        if(test==1){
           testQueue();
        }
        if(test==2){
            testInsertionSort();
        }
        if(test==3){
          testSelectionSort();
        }
        if(test==4){
           testShellSort();
        }
        if(test==5){
          testShuffleSort();
        }
        if(test==6){
           testMergeSort();
        }
        

   //-(NSArray *)mergeLow:(int)low andHigh:(int)high andMiddle:(int)mid inArray:(NSMutableArray*)array andHelperArray:(NSMutableArray *)helperArray{
    }
    return 0;
}

