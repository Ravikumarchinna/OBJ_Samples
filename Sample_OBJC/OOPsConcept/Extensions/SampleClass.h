//
//  SampleClass.h
//  Sample_OBJC
//
//  Created by Ravikumar on 10/14/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SampleClass : NSObject
{
    NSString *name;
}

-(void)setInternalID;
-(NSString *)getExternalID;




@end

NS_ASSUME_NONNULL_END
