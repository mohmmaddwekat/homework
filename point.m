 #import "point.h"
 @implementation MCPoint
@synthesize x,y;
-(id) init {
 int  defaultX=0;
 int  defaultY =0;
 return [self initWithValuespoint:defaultX:defaultY];
}

-(id)initWithValuespoint:(int)X:(int)Y
{
    self = [super init];
 if (self) {
     [self setX:X];
     [self setY:Y];
 }
//  printf("X: %d AND Y: %d ",[self X],[self Y]);
 return self;
}
// -(void)setX:(int)X{
//     x=X;
// }
// -(void)setY:(int)Y{
//     y=Y;
// }
-(int)X{
    return x;
}
-(int)Y{
    return y;
}

@end