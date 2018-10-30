#import <Foundation/Foundation.h>
#import "JCStack.h"
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
  JCNode *n1 = [[JCNode alloc] init];
  [n1 setValue:1];
  [n1 setNext: nil];
  [stack push: n1];
  JCNode *n2 = [[JCNode alloc] init];
  [n2 setValue:2];
  [n2 setNext: nil];
  [stack push: n2];
  [stack print];
  [pool drain];
  return 0;
}