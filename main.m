#import <Foundation/Foundation.h>

int main (int argc, char **argv) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  
  NSFileHandle *kbd = [NSFileHandle fileHandleWithStandardInput];
  NSData *inputData = [kbd availableData];
  NSString *option = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
  NSLog(@"%@", option);

  [pool drain];
  return 0;
}