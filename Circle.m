 #import "Circle.h"
 @implementation MCCircle
-(id) init {
 MCPoint *defaultC=[[MCPoint alloc]initWithValuespoint:0:0];
 int defaultRadius =1;
 return [self initWithValues:defaultC:defaultRadius];
}
-(id)initWithValues:(MCPoint *)f1:(MCPoint *)f2:(int)Major:(int)Minor{
  if((f1==f2)&&(Major==Minor)){
  return [self initWithValues:f1:Major];
  }else{
      return [self init];
  }
}
-(id)initWithValues:(MCPoint *)c:(int)radius{
 self = [super initWithValues:c:c:radius:radius];
 if (self) {
     [self setRadius:radius];
     [self setCenter:c];
 }
 return self;
}
-(void)update:(MCPoint *)c:(int)radius{
  Radius=radius;
  Center=c;
}
+(MCCircle *)createCircle:(MCPoint *)c:(int)radius{
     return [(MCCircle*)[MCCircle alloc] initWithValues:c:radius];
}
-(float)getRadius{
    return Radius;
}
-(MCPoint *)getCenter{
    return Center;
}
-(void)setRadius:(int)r{
    Radius=r;
}
-(void)setCenter:(MCPoint *)c{
    Center=c;    
}

 @end