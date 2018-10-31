#import <Foundation/Foundation.h>

@interface JCNode: NSObject {
  @protected
    NSNumber *value;
    JCNode *next;
}
-(void) setValue: (NSNumber *)newValue;
-(void) setNext: (JCNode *)newNext;
-(NSNumber *) getValue;
-(JCNode *) getNext;
@end