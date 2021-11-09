//
//  Shape.h
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Shape : NSObject{
    float area;
}

-(void)printArea;
-(void)calculateArea;


@end

NS_ASSUME_NONNULL_END
