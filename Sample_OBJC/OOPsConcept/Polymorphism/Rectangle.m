//
//  Rectangle.m
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import "Rectangle.h"

@implementation Rectangle

-(id)initwithLength:(float)rlenth andBreadth:(float)rbradth{
    
    length = rlenth;
    breadth = rbradth;
    return self;
}

-(void)calculateArea{
    area = length * breadth;
}

@end
