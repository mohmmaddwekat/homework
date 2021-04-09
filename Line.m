#import "Line.h"
#import <math.h>

 @implementation MCLine
@synthesize begien,end;
-(id)init {
 MCPoint *defaultbegien=[[MCPoint alloc]initWithValuespoint:1:1];
 MCPoint *defaultEnd =[[MCPoint alloc]initWithValuespoint:0:0];
 return [self initWithValuesLine:defaultbegien:defaultEnd];
}
-(void)drow{
 NSLog(@"@begien point (%f,%f)" ,[begien X],[begien Y],"and end point (%f,%f)",[end X],[end Y],"and color #%f",color);
}

-(id)initWithValuesLine:(MCPoint *)b:(MCPoint *)e{
    self = [super init];
 if (self) {
     [self setBegien:b];
     [self setEnd:e];
 }
 //  printf("X: %d AND Y: %d ",[e x],[e x]);
 //  printf("\n %d,AND %d ANDa %d and %d andata %d is %d tttt %d years old.\n",[e  Y],[b Y],[e X],[b X],sqrt(pow(([e X]-[b X]),2)+pow(([e Y]-[b Y]),2)));

 return self;
}

-(float)getLength{
    return sqrt(pow(([end x]-[begien x]),2)+pow(([end y]-[begien y]),2));
}
+(float)calculateLength:(MCPoint*)p1:(MCPoint*)p2{


 // printf("\n %f,AND %f ANDa %f and %f andata %f  years old.\n",[p2  y],[p1 y],[p2 x],[p1 x],sqrt(pow(([p2 x]-[p1 x]),2)+pow(([p2 y]-[p1 y]),2)));
   return sqrt(pow(([p2 x]-[p1 x]),2)+pow(([p2 y]-[p1 y]),2));

}
@end