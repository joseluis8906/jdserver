#import <Foundation/Foundation.h>
#import "JCNode.h"

@interface JCStack: NSObject {
  @protected
    JCNode *top;
}
-(void) push: (JCNode *)newNode;
-(JCNode *) pop;
-(void) print;
@end