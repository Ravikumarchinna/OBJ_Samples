//
//  SampleClass1.h
//  Sample_OBJC
//
//  Created by Ravikumar on 10/14/21.
//

#import <Foundation/Foundation.h>
#import "PrintClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface SampleClass1 : NSObject<PrintProtocolDelegate>


-(void)startAction;

@end

NS_ASSUME_NONNULL_END
