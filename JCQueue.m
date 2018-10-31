#import "JCQueue.h"

@implementation JCQueue
-(void) enqueue: (JCNode *) newNode{
  if([top getValue] == nil){
    top = newNode;
  } else {
    JCNode *tmp = top;
    while([tmp getNext] != nil){
      tmp = [tmp getNext];
    }
    [tmp setNext: newNode];
  }
}
-(JCNode *) dequeue {
  JCNode *tmp = top;
  top = [tmp getNext];
  return tmp;
}
-(void) print {
  JCNode *it = top;
  while (it != nil) {
    NSLog(@"%d", [[it getValue] intValue]);
    it = [it getNext];
  }
}
@end