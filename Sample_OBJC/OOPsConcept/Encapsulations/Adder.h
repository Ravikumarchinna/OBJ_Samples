//
//  Adder.h
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Adder : NSObject {
    NSInteger total;
}

-(id)initwithInitialNumber:(NSInteger)initialNumber;
-(void)addNumber:(NSInteger)newNumber;
-(NSInteger)getTotal;


@end

NS_ASSUME_NONNULL_END
