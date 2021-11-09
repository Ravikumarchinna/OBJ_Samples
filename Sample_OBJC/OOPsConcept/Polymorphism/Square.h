//
//  Square.h
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
NS_ASSUME_NONNULL_BEGIN

@interface Square : Shape{
    float length;
}

-(id)initwithSide:(float)side;
-(void)calculateArea;
@end

NS_ASSUME_NONNULL_END
