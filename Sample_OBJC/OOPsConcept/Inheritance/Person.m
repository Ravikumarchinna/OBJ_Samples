//
//  Person.m
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import "Person.h"

@implementation Person

-(id)initwithName:(NSString *)name andAge:(NSInteger)age{
    
    personName = name;
    personAge  = age;
    
    
    return  self;
}
-(void)print{
    NSLog(@"Name :%@",personName);
    NSLog(@"Age :%ld",personAge);
}

@end
