#import "JCNode.h";

@implementation JCNode
-(void) setValue: (int)newValue {
  value = newValue;
}
-(void) setNext: (JCNode *)newNext {
  next = newNext;
}
-(int) getValue {
  return value;
}
-(JCNode *) getNext {
  return next;
}
@end