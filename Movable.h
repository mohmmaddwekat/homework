
#import <Foundation/Foundation.h>

@protocol MCMovable
-(void)moveUp:(int)m;
-(void)moveDown:(int)m;
-(void)moveLeft:(int)m;
-(void)moveRight:(int)m;
-(void)moveBy:(int)x:(int)y;

@end