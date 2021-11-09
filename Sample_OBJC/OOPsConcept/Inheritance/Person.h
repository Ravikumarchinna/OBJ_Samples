//
//  Person.h
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject{
    
    NSString *personName;
    NSInteger personAge;

}
-(id)initwithName:(NSString *)name andAge:(NSInteger)age;
-(void)print;

@end

NS_ASSUME_NONNULL_END
