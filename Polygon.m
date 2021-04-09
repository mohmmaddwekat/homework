 #import "Polygon.h"
  #import <math.h>
 @implementation MCPolygon
//  @synthesize pointList;
-(id) init{
    self = [super init];
    if (self != nil)
    {
     color=[[MCColor alloc]  initWithValues:1:2:0];
          fillColar=[[MCColor alloc]  initWithValues:1:2:0];
    }
    return self;
}

-(void)add:(MCPoint *)p{
if([pointList count]==0){
   pointList = [[NSMutableArray alloc] init];
   
}
      [pointList addObject:p];
      
   
   }



-(MCPoint *)getPoint:(int)index{
   //  if(index > [pointList count]){
   //     return nil;
   //  }
     return [pointList objectAtIndex:index];
}

-(bool)isRectangle{
    if ([pointList count]==4){
        float width = sqrt(pow([[pointList objectAtIndex:1] X] - [[pointList objectAtIndex:0] X], 2) + pow([[pointList objectAtIndex:1] Y] - [[pointList objectAtIndex:0] Y], 2));
        float height = sqrt(pow([[pointList objectAtIndex:2] X] - [[pointList objectAtIndex:1] X], 2) + pow([[pointList objectAtIndex:2] Y]- [[pointList objectAtIndex:1] Y], 2));
        if(width!=height){
            return true;
        }else{
            return false;
        }
    }else{
        return false;
    }
}

-(bool)isSquare{
    if ([pointList count]==4){
        float width = sqrt(pow([[pointList objectAtIndex:1] X] - [[pointList objectAtIndex:0] X], 2) + pow([[pointList objectAtIndex:1] Y] - [[pointList objectAtIndex:0] Y], 2));
        float height = sqrt(pow([[pointList objectAtIndex:2] X] - [[pointList objectAtIndex:1] X], 2) + pow([[pointList objectAtIndex:2] Y]- [[pointList objectAtIndex:1] Y], 2));
        if(width==height){
            return true;
        }else{
            return false;
        }
    }else{
        return false;
    }
}

-(float)getPerimeter{
 int i,j;
 int perimeter=0;
   for(i=0;i<[pointList count];i++){
   if(i==[pointList count]-1){
       perimeter+=  sqrt((int)pow(([[pointList objectAtIndex:i] x] - [[pointList objectAtIndex:0] x]), 2) + (int)pow(([[pointList objectAtIndex:i] y] - [[pointList objectAtIndex:0] y]), 2));
   }
   else{
      perimeter+=  sqrt((int)pow(([[pointList objectAtIndex:i+1] x] - [[pointList objectAtIndex:i] x]), 2) + (int)pow(([[pointList objectAtIndex:i+1] y] - [[pointList objectAtIndex:i] y]), 2));
   }
    
   }
    return perimeter;
}
-(float)getArea{
   int area;
   int i,j;
   for(i=0;i<[pointList count];i++){
      if(i==[pointList count]-1){
         area+=([[pointList objectAtIndex:i] x]*[[pointList objectAtIndex:0] x]);
      }else{
         area+=([[pointList objectAtIndex:i] x]*[[pointList objectAtIndex:i+1] x]);
         }
   }
   for(j=0;j<[pointList count];j++){
   if(j==[pointList count]-1){
      area-=([[pointList objectAtIndex:j] y]*[[pointList objectAtIndex:0] y]);
   }else{
      area-=([[pointList objectAtIndex:j] y]*[[pointList objectAtIndex:j+1] y]);
      }
   }
   
    return area;
}
-(bool)isTriangle{
    if ([pointList count]==3){
        return true;
    }else{
        return false;
    }
}
-(void)moveUp:(int)m{
   int j;
   for(j=0;j<[pointList count];j++){
          [[pointList objectAtIndex:j] setY:[[pointList objectAtIndex:j] y]+m];
   }
}
-(void)moveDown:(int)m{
   int j;
   for(j=0;j<[pointList count];j++){
   
    if(m>0){
        [[pointList objectAtIndex:j] setY:[[pointList objectAtIndex:j] y]-m];
    }else{
       [[pointList objectAtIndex:j] setY:[[pointList objectAtIndex:j] y]+m];
    }
    }

}
-(void)moveRight:(int)m{
   int j;
   for(j=0;j<[pointList count];j++){
      [[pointList objectAtIndex:j] setX:[[pointList objectAtIndex:j] x]+m];
    }

}
-(void)moveLeft:(int)m{
   int j;
   for(j=0;j<[pointList count];j++){
   
    if(m>0){
        [[pointList objectAtIndex:j] setX:[[pointList objectAtIndex:j] x]-m];
    }else{
       [[pointList objectAtIndex:j] setX:[[pointList objectAtIndex:j] x]+m];
    }
    }

}
-(void)moveBy:(int)x:(int)y{
   int j;
   for(j=0;j<[pointList count];j++){
        [[pointList objectAtIndex:j] setY:[[pointList objectAtIndex:j] y]+y];
        [[pointList objectAtIndex:j] setX:[[pointList objectAtIndex:j] x]+x];
    }

}

@end