#import "Foundation/Foundation.h"

@interface MCPoint:NSObject
{
int x;
int y;
    
}
-(id)initWithValuespoint:(int)X:(int)Y;
-(id) init;
// -(void)setX:(int)X;
// -(void)setY:(int)Y;
-(int)X;
-(int)Y;
@property int y;
@property int x;
@end