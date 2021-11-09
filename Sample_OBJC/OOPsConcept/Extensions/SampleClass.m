//
//  SampleClass.m
//  Sample_OBJC
//
//  Created by Ravikumar on 10/14/21.
//

#import "SampleClass.h"

@interface SampleClass()
{
    NSString *internalID;
}

@end


@implementation SampleClass

- (void)setInternalID {
   internalID = [NSString stringWithFormat:
   @"UNIQUEINTERNALKEY%dUNIQUEINTERNALKEY",arc4random()%100];
}

- (NSString *)getExternalID {
   return [internalID stringByReplacingOccurrencesOfString:
   @"UNIQUEINTERNALKEY" withString:@""];
}




@end
