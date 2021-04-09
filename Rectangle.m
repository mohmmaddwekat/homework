#import "Rectangle.h"
#import <math.h>
@implementation MCRectangle
-(id) init {
 MCPoint *defaultUpperCorner=[[MCPoint alloc]initWithValuespoint:0:0];
 int defaultWidth =9;
 int defaultHeight =8;
 return [self initWithValues:defaultUpperCorner:defaultWidth:defaultHeight];
}

-(id)initWithValues:(MCPoint *)upperCorner:(int)w:(int)h{
 self = [super init];
 if (self) {
  uppercorner=upperCorner;
  Width=w;
  Height=h;
 }
 return self;
}

-(void)update:(MCPoint *)upperCorner:(int)w:(int)h{
  uppercorner=upperCorner;
  Width=w;
  Height=h;
}

+(MCRectangle *)createRectangle :(MCPoint *)uppercorner:(int)w:(int)h{
MCRectangle *Rectangle  = [(MCRectangle *)[MCRectangle alloc ] initWithValues:uppercorner:w:h];
     return Rectangle;
}

-(int)getWidth{
    return Width;
}
-(int)getHeight{
    return Height;
}
-(float)getPerimeter{
    return 2*(Width+Height);
}
-(float)getArea{
    return Width*Height;
}


@end