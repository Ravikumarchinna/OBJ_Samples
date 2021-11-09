//
//  SampleClass1.m
//  Sample_OBJC
//
//  Created by Ravikumar on 10/14/21.
//

#import "SampleClass1.h"
@implementation SampleClass1


-(void)startAction
{
    PrintClass *printclass = [[PrintClass alloc]init];
    [printclass setDelegate:self];
    [printclass printDetails];
    
}
-(void)processComplted{
    NSLog(@"Printing Proces Completed");
}


@end




























