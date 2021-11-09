//
//  Square.m
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import "Square.h"

@implementation Square

-(id)initwithSide:(float)side{
    length = side;
    return self;
}
-(void)calculateArea{
    area = length * length;
}
-(void)printArea{
    NSLog(@"The area of square is %f",area);
}

@end
