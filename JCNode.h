#import <Foundation/Foundation.h>

@interface JCNode: NSObject {
  @protected
    int value;
    JCNode *next;
}
-(void) setValue: (int)newValue;
-(void) setNext: (JCNode *)newNext;
-(int) getValue;
-(JCNode *) getNext;
@end