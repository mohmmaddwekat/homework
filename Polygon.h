#import <Foundation/Foundation.h>
#import "point.h"
#import "ClosedShape.h"
#import "Movable.h"
@interface MCPolygon:MCClosedShape <MCMovable>

    NSMutableArray *pointList;

// @property (nonatomic, copy)NSMutableArray *pointList;
-(id) init;
-(void)add:(MCPoint *)p;
// -(id)initarrayWithObjects:(MCPoint *)p;
-(MCPoint *)getPoint:(int)index;
-(bool)isRectangle;
-(bool)isTriangle;
-(bool)isSquare;
@end