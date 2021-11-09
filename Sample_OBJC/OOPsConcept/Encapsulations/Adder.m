//
//  Adder.m
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import "Adder.h"

@implementation Adder

-(id)initwithInitialNumber:(NSInteger)initialNumber{
    total = initialNumber;
    return  self;
}
-(void)addNumber:(NSInteger)newNumber{
    total = total+newNumber;
}
-(NSInteger)getTotal{
    return total;
}



@end
