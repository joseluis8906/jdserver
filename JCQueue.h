#import <Foundation/Foundation.h>
#import "JCNode.h"

@interface JCQueue: NSObject {
  @protected
    JCNode *top;
}
-(void) enqueue: (JCNode *)newNode;
-(JCNode *) dequeue;
-(void) print;
@end