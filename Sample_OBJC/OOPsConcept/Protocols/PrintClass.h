//
//  PrintClass.h
//  Sample_OBJC
//
//  Created by Ravikumar on 10/14/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PrintProtocolDelegate

-(void)processComplted;
@end


@interface PrintClass : NSObject
{
    id delegate;
}
-(void)printDetails;
-(void)setDelegate:(id)newDelegate;



@end

NS_ASSUME_NONNULL_END






























