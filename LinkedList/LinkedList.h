//
//  LinkedList.h
//  LinkedList
//


#import <Foundation/Foundation.h>
@class Node;

@interface LinkedList : NSObject

-(void)insert:(id) value;
-(void)remove:(id) value;


-(BOOL)isEmpty;
-(void)print;

/*Remove last node*/
-(void)removeLastNode;
-(void)insertFirst:(id) value;
-(void)removeFirstNode;
@end
