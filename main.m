#import <Foundation/Foundation.h>
#import "JCStack.h"
#import "JCQueue.h"
#import "JCNode.h"

int main (int argc, char **argv) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  /*
  NSFileHandle *kbd = [NSFileHandle fileHandleWithStandardInput];
  NSData *inputData = [kbd availableData];
  NSString *option = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
  NSLog(@"%@", option);
  */
  JCStack *stack = [[JCStack alloc] init];
  JCQueue *queue = [[JCQueue alloc] init];
  JCNode *ns;
  JCNode *nq;
  NSArray *nodes = [NSArray arrayWithObjects: [NSNumber numberWithInt:1], [NSNumber numberWithInt:2], [NSNumber numberWithInt:3], nil];
  for(NSNumber *i in nodes){
    ns = [[JCNode alloc] init];
    [ns setValue: i];
    [ns setNext: nil];
    [stack push: ns];

    nq = [[JCNode alloc] init];
    [nq setValue: i];
    [nq setNext: nil];
    [queue enqueue: nq];
  }
  [stack print];
  [queue print];

  [pool drain];
  return 0;
}