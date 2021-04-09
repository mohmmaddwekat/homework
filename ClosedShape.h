#import <Foundation/Foundation.h>
#import "color.h"
#import "shape.h"
@interface MCClosedShape:MCShape
MCColor *fillColar;
-(float)getPerimeter;
-(float)getArea;
@end