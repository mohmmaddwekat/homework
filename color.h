#import <Foundation/Foundation.h>
@interface MCColor:NSObject
int R;
int G;
int B;
-(id)init;
-(id)initWithValues:(int)r:(int)g:(int)b;
-(void)setColor:(int)r:(int)g:(int)b;
@end