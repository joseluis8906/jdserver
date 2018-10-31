#import "JCNode.h"

@implementation JCNode
-(void) setValue: (NSNumber *)newValue {
  value = newValue;
}
-(void) setNext: (JCNode *)newNext {
  next = newNext;
}
-(NSNumber *) getValue {
  return value;
}
-(JCNode *) getNext {
  return next;
}
@end