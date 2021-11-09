//
//  Employee.m
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import "Employee.h"

@implementation Employee

-(id)initwithName:(NSString *)name andAge:(NSInteger)age andEducationn:(NSString *)education{
    personName = name;
    personAge = age;
    employeeEducation = education;
    return self;
}
-(void)print{
    NSLog(@"Name :%@",personName);
    NSLog(@"Age :%ld",personAge);
    NSLog(@"Education :%@",employeeEducation);
}



@end
