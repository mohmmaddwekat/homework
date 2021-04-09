#import "color.h"
@interface MCShape:NSObject
{
MCColor *color;
}
@property (nonatomic, assign)MCColor *color;
-(void)drow;
@end