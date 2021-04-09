#import "Ellipse.h"
@interface MCCircle:MCEllipse
int Radius;
MCPoint * Center;
-(id)init;
-(id)initWithValues:(MCPoint *)c:(int)radius;
-(void)update:(MCPoint *)c:(int)radius;
-(MCPoint *)getCenter;
-(float)getRadius;
+(MCCircle *)createCircle:(MCPoint *)c:(int)radius;
-(void)setRadius:(int)r;
-(void)setCenter:(MCPoint *)c;
@end