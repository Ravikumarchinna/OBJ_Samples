//
//  Employee.h
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import <Foundation/Foundation.h>
#import "Person.h"
NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person {
    NSString *employeeEducation;
}

-(id)initwithName:(NSString *)name andAge:(NSInteger)age andEducationn:(NSString *)education;
-(void)print;

@end

NS_ASSUME_NONNULL_END
