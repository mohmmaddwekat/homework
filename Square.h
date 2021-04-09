#import <Foundation/Foundation.h>
#import "point.h"
#import "Rectangle.h"
@interface MCSquare:MCRectangle
MCPoint *uppercorner;
int side;

-(id)init;
-(id)initWithValues:(MCPoint *)uppercorner:(int)side;
-(void)update:(MCPoint *)uppercorner:(int)side;
-(int)getSide;
-(void)setSide:(int)s;
+(MCSquare *)createSquare :(MCPoint *)uppercorner:(int)side;
@end