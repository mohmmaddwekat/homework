#import <math.h>
#import "Triangle.h"
@implementation MCTriangle

-(id) init {
 MCPoint *defaultP1=[[MCPoint alloc]initWithValuespoint:0:0];
 MCPoint *defaultP2=[[MCPoint alloc]initWithValuespoint:0:3];
 MCPoint *defaultP3=[[MCPoint alloc]initWithValuespoint:2:2];
 return [self initWithValues:defaultP1:defaultP2:defaultP3];
}

-(id)initWithValues:(MCPoint *)p1:(MCPoint *)p2:(MCPoint *)p3{
 self = [super init];
 if (self) {
  P1=p1;
  P2=p2;
  P3=p3;
 }
 return self;
}

-(void)update:(MCPoint *)p1:(MCPoint *)p2:(MCPoint *)p3{
  P1=p1;
  P2=p2;
  P3=p3;
}

+(MCTriangle *)createTriangle :(MCPoint *)p1:(MCPoint *)p2:(MCPoint *)p3{
   MCTriangle *Triangle  = [(MCTriangle *)[MCTriangle alloc ] initWithValues:p1:p2:p3];
     return Triangle ;
}
-(bool)isRightTriangle{
    int A=sqrt(pow(([P2 x]-[P1 x]),2)+pow(([P2 y]-[P1 y]),2));
    int C=sqrt(pow(([P3 x]-[P1 x]),2)+pow(([P3 y]-[P1 y]),2));
    int B=sqrt(pow(([P3 x]-[P2 x]),2)+pow(([P3 y]-[P2 y]),2));
    
    if(A==sqrt(pow(C,2)+pow(B,2))){
        return true;
    }
    if(B==sqrt(pow(C,2)+pow(A,2))){
        return true;
        
    }
    else if(C==sqrt(pow(A,2)+pow(B,2))){
        return true;
    }

        return false;
 
}
-(float)getPerimeter{
    float A = (float)pow(([P2 x] - [P1 y]), 2) + (float)pow(([P2 y] - [P1 y]), 2);
    float B = (float)pow(([P3 x] - [P2 x]), 2) + (float)pow(([P3 y] - [P2 y]), 2); 
    float C = (float)pow(([P3 x] - [P1 x]), 2) + (float)pow(([P3 y] - [P1 y]), 2);
    return sqrt(A+B+C);
}
-(float)getArea{
    int area = (([P1 x]*[P2 y])+([P2 x]*[P3 y])+([P3 x]*[P1 y])-([P1 y]*[P2 x])-([P2 y]*[P3 x])-([P3 y]*[P1 x]))/2;
    return area;
}


@end