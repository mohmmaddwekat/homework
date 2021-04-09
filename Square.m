#import "Square.h"
#import <math.h>
@implementation MCSquare
-(id)init{
    int defaultSide=4;
    MCPoint *defaultUpperCorner=[[MCPoint alloc]initWithValuespoint:0:0];
    return [self initWithValues:defaultUpperCorner:defaultSide];
}
-(id)initWithValues:(MCPoint *)upperCorner:(int)Side{
    self = [super initWithValues:uppercorner:Side:Side];
    if (self) {
    uppercorner=upperCorner;
    side=Side;
    }
    return self;
}
-(id)initWithValues:(MCPoint *)upperCorner:(int)w:(int)h{
 if(w==h){
  return [self initWithValues:upperCorner:w];
  }else{
      return nil;
  }
  }

-(void)setSide:(int)s{
    side=s;
}
-(void)update:(MCPoint *)upperCorner:(int)Side{
    uppercorner=upperCorner;
    side=Side;
}
-(int)getSide{
    return side;
}
+(MCSquare *)createSquare:(MCPoint *)upperCorner:(int)Side{
MCSquare *Square  = [[MCSquare alloc ] initWithValues:upperCorner:Side];

    return Square;
}
@end