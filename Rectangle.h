
#import <Foundation/Foundation.h>
#import "point.h"
#import "Polygon.h"
@interface MCRectangle:MCPolygon

int Width;
int Height;
MCPoint *uppercorner;
-(id)init;
-(id)initWithValues:(MCPoint *)uppercorner:(int)w:(int)h;
-(void)update:(MCPoint *)uppercorner:(int)w:(int)h;
-(int)getWidth;
-(int)getHeight;
+(MCRectangle *)createRectangle :(MCPoint *)uppercorner:(int)w:(int)h;
@end