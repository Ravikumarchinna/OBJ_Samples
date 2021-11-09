//
//  Rectangle.h
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Shape {
    
    float length;
    float breadth;
}

-(id)initwithLength:(float)rlenth andBreadth:(float)rbradth;


@end

NS_ASSUME_NONNULL_END
