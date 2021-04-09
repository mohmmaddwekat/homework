#import "color.h"
@ implementation MCColor - (void) setColor: (int) r: (int) g:(int) b
{
  G = g;
  R = r;
  B = b;
}

-(id) init
{
  int defaultG = 0;
  int defaultR = 0;
  int defaultB = 0;
return[self initWithValues: defaultR: defaultG:defaultB];
}

-(id) initWithValues: (int) r: (int) g:(int) b
{
  self =[super init];
  if (self)
    {
    [self setColor: r: g:b];
    }
  return self;
}

+(void) setColor: (int) r: (int) g:(int) b
{
  R = r;
  G = g;
  B = b;
}

@end
