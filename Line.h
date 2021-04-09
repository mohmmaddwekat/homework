#import "point.h"
#import "shape.h"
#import <Cocoa/Cocoa.h>
@interface MCLine:MCShape
{
MCPoint *begien;
MCPoint *end;
}
@property (nonatomic, assign) MCPoint *begien;
@property (nonatomic, assign) MCPoint *end;
-(id)init;
-(id)initWithValuesLine:(MCPoint*)b:(MCPoint*)e;
-(float)getLength;
+(float)calculateLength:(MCPoint*)p1:(MCPoint*)p2;

@end
