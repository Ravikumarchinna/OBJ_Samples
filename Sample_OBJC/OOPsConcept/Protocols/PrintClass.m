//
//  PrintClass.m
//  Sample_OBJC
//
//  Created by Ravikumar on 10/14/21.
//

#import "PrintClass.h"

@implementation PrintClass

-(void)printDetails{
    NSLog(@"Printing Details");
    [delegate processComplted];
}
-(void)setDelegate:(id)newDelegate{
    delegate = newDelegate;
}

@end




































