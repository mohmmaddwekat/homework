
#import <Foundation/Foundation.h>
#import "point.h"
#import "Polygon.h"
@interface MCTriangle:MCPolygon 
MCPoint *P1;
MCPoint *P2;
MCPoint *P3;
-(id)init;
-(id)initWithValues:(MCPoint *)p1:(MCPoint *)p2:(MCPoint *)p3;
-(void)update:(MCPoint *)p1:(MCPoint *)p2:(MCPoint *)p3;
-(bool)isRightTriangle;
+(MCTriangle *)createTriangle :(MCPoint *)p1:(MCPoint *)p2:(MCPoint *)p3;
@end