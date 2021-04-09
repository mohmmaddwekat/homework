 #import "Ellipse.h"
 #import <math.h>
 @implementation MCEllipse
//  @synthesize focus1,focus2,major,minor;
-(id) init {
 MCPoint *defaultFocus1=[[MCPoint alloc]initWithValuespoint:0:0];
 MCPoint *defaultFocus2 =[[MCPoint alloc]initWithValuespoint:0:10];
 int defaultMajor=10;
 int defaultMinor=10;
 return [self initWithValues:defaultFocus1:defaultFocus2:defaultMajor:defaultMinor];
}

-(id)initWithValues:(MCPoint *)f1:(MCPoint *)f2:(int)Major:(int)Minor{
 self = [super init];
 if (self) {
     color=[[MCColor alloc]  initWithValues:1:2:0];
     fillColar=[[MCColor alloc]  initWithValues:1:2:0];
       [self setFocus1:f1];
       [self setFocus2:f2];
       [self setMajor:Major];
       [self setMinor:Minor];
      //  minor=Minor;
      //  major=Major;
      //  focus1=f1;
      //  focus2=f2;
 }
 return self;
}
-(void)update:(MCPoint *)f1:(MCPoint *)f2:(int)Major:(int)Minor{
    focus1=f1;
    focus2=f2;
    major=Major;
    minor=Minor;
}
+(MCEllipse *)createEllipse:(MCPoint *)f1:(MCPoint *)f2:(int)major:(int)minor{
MCEllipse *Ellipse  = [[MCEllipse alloc ] initWithValues:f1:f2:major:minor];
     return Ellipse;

}

-(float)getPerimeter{
   return 2*3.14*sqrt((pow(major,2)+pow(minor,2))/2);
}
-(float)getArea{
    return 3.142*major*minor;
}
-(void)moveUp:(int)m{
if([focus1 Y]==[focus2 Y]){
  [focus1 setY:[focus1 Y]+m];  
}else{
    [focus1 setY:[focus1 Y]+m];
    [focus2 setY:[focus2 Y]+m];   
}
}
-(void)moveDown:(int)m{
if([focus1 Y]==[focus2 Y]){
     if(m>0){
      [focus1 setY:[focus1 Y]-m];
    }else{
        [focus1 setY:[focus1 Y]+m];
    }  
}else{
    if(m>0){
      [focus1 setY:[focus1 Y]-m];
      [focus2 setY:[focus2 Y]-m];
    }else{
        [focus1 setY:[focus1 Y]+m];
        [focus2 setY:[focus2 Y]+m];
    }  
}
  

}
-(void)moveRight:(int)m{
    if([focus1 X]==[focus2 X]){
        [focus1 setX:[focus1 X]+m];
    }else{
        [focus1 setX:[focus1 X]+m];
        [focus2 setX:[focus2 X]+m];   
    }
}
-(void)moveLeft:(int)m{
    if([focus1 X]==[focus2 X]){
     if(m>0){
        [focus1 setX:[focus1 X]-m];
    }else{
        [focus1 setX:[focus1 X]+m];
    }   
    }else{
        if(m>0){
        [focus1 setX:[focus1 X]-m];
        [focus2 setX:[focus2 X]-m];
    }else{
        [focus1 setX:[focus1 X]+m];
        [focus2 setX:[focus2 X]+m];
    }
    }
    
}
-(void)moveBy:(int)x:(int)y{
    if(([focus1 Y]==[focus2 Y])||([focus1 X]==[focus2 X])){
        [focus1 setY:[focus1 Y]+y];
        [focus1 setX:[focus1 X]+x];
    }else{
        [focus1 setY:[focus1 Y]+y];
        [focus2 setY:[focus2 Y]+y];
        [focus1 setX:[focus1 X]+x];
        [focus2 setX:[focus2 X]+x];
    }

}
-(void)setMinor:(int)Minor{
    minor=Minor;
}

-(void)setMajor:(int)Major{
    major=Major;
}
-(void)setFocus1:(MCPoint *)Focus1{
    focus1=Focus1;
}
-(void)setFocus2:(MCPoint *)Focus2{
    focus2=Focus2;
}

-(int)minor{
    return minor;
}

-(int)major{
    return major;
}
-(MCPoint *)Focus1{
    return focus1;
}
-(MCPoint *)Focus2{
    return focus2;
}

@end