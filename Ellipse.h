#import <Foundation/Foundation.h>
#import "point.h"
#import "ClosedShape.h"
#import "Movable.h"
@interface MCEllipse:MCClosedShape <MCMovable>



MCPoint* focus1;
MCPoint* focus2;
int major;
int minor;
    

// @property (nonatomic, readonly) int major;
// @property (nonatomic, readonly) int minor;
// @property (nonatomic, readonly) MCPoint *focus1;
// @property (nonatomic, readonly) MCPoint *focus2;
-(void)setFocus1:(MCPoint *)f1;
-(void)setFocus2:(MCPoint *)f2;
-(void)setMajor:(int)Major;
-(void)setMinor:(int)Minor;
-(int)minor;
-(int)major;
-(MCPoint *)Focus1;
-(MCPoint *)Focus2;

-(id)initWithValues:(MCPoint *)f1:(MCPoint *)f2:(int)major:(int)minor;
-(void)update:(MCPoint *)f1:(MCPoint *)f2:(int)major:(int)minor;
+(MCEllipse *)createEllipse:(MCPoint *)f1:(MCPoint *)f2:(int)major:(int)minor;
@end