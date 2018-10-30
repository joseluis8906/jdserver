#import "JCStack.h"

@implementation JCStack
-(void) push: (JCNode *) newNode{
  [newNode setNext: top];
  top = newNode;
}
-(JCNode *) pop {
  JCNode *tmp = top;
  top = [tmp getNext];
  return tmp;
}
-(void) print {
  JCNode *it = top;
  while (it != nil) {
    NSLog(@"%d", [it getValue]);
    it = [it getNext];
  }
}
@end