//
//  LinkedList.h
//  LinkedList
//


#import <Foundation/Foundation.h>
@class Node;

@interface LinkedList : NSObject

-(void)insert:(Node *)n;
-(void)remove:(Node *)n;

-(BOOL)isEmpty;
-(void)print;

@end
