//
//  OOPs_ViewController.m
//  Sample_OBJC
//
//  Created by Ravikumar on 10/13/21.
//

#import "OOPs_ViewController.h"
#import "Person.h"
#import "Employee.h"

//......... Polymorphism
#import "Shape.h"
#import "Rectangle.h"
#import "Square.h"

//.....Encapsulation
#import "Adder.h"

//....... Category
#import "NSString+MyAdditions.h"

//.....Pose
#import "MyString.h"

//......Extension
#import "SampleClass.h"

//..... Protocol
#import "PrintClass.h"
#import "SampleClass1.h"


@interface OOPs_ViewController ()

@end

@implementation OOPs_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //.... Core Java, C++, Emglish
    //Check once :: https://medium.com/ios-objective-creation/lesson-2-creating-custom-classes-in-objective-c-17f760ce9732
    
    //............ Started Inheritance
//    NSLog(@"Base class Person Object");
//    Person *person = [[Person alloc]initwithName:@"Raj" andAge:5];
//    [person print];
//    NSLog(@"Inherited Class Employee Object");
//
//    Employee *employee =[[Employee alloc]initwithName:@"Raj" andAge:5 andEducationn:@"MBA"];
//    [employee print];
    //............ End Inheritance

    
    //............ Started Polymorphism

//    Shape *square = [[Square alloc]initwithSide:10.0];
//    [square calculateArea];
//    [square printArea];
//
//    Shape *rect = [[Rectangle alloc]initwithLength:10.0 andBreadth:5.0];
//    [rect calculateArea];
//    [rect printArea];
    
    //............ End Polymorphism

    //............ Start Data Encapsulation
//    Adder *adder = [[Adder alloc]initwithInitialNumber:10];
//    [adder addNumber:5];
//    [adder addNumber:4];
//    NSLog(@"get the total --->%ld",[adder getTotal]);
    
    //............ End Data Encapsulation

    //............ Start Category
//    NSString *str_exist=[NSString getcopyRightString];
//    NSLog(@" add existing string--->%@",str_exist);
    //............ End Category

    //............ Start Pose
//  I would like to bring to your notice that posing was declared deprecated in Mac OS X 10.5 and it's not available for use thereafter.
    //............ End Pose

    //............ Start Extension
    
//    SampleClass *sampleclass = [[SampleClass alloc]init];
//    [sampleclass setInternalID];
//    NSLog(@"ExternalID:  %@",[sampleclass getExternalID]);
    //............ End Extension

    
    //............ Start Protocol
//    SampleClass1 *sampleClass1 = [[SampleClass1 alloc]init];
//    [sampleClass1 startAction];
    //............ End Protocol

    
    
    
//    int empty1,empty2,result;
//    result =0;
//    NSArray *arra_1 = [[NSArray alloc]initWithObjects:@"Sample2", nil];
//    NSArray *arra_2 = [[NSArray alloc]initWithObjects:@"Sample2", nil];
//    NSArray *arra_3 = [[NSArray alloc]initWithObjects:@"Sample3", nil];
//
//    NSString *str_getLoadArray = [[sectionArray objectAtIndex:section]objectForKey:@"loadArray"];
//    if ([str_getLoadArray isEqualToString:@"arrm_navlog2"]) {
//    }
//    {
//        loadArray = "arrm_navlog2";
//        name = "Alternate Navlog2";
//        select = NO;
//    },
    
    
    
    // @"NavLogAlternate1"
    
//    if ([arra_1 count] > 0) {
//        empty1=1;
//        result++;
//    }else{
//        empty1=0;
//    }
//
//    if ([arra_2 count] > 0) {
//        if ([arra_1 count] == 0) {
//            empty1=0;
//        }
//        empty2=1;
//        result++;
//    }else{
//        empty2=0;
//    }
//
//
//    if ([arra_3 count] > 0) {
//
//        if (result ==2) {
//            NSLog(@"value --->%d",result);
//        }
//    }
//
//    NSLog(@"value --->%d",result);

    
    
    //................................................... Blocks code execution
    dispatch_group_t group = dispatch_group_create();
    
  //  .......... Group1 and Block1
    dispatch_group_enter(group);
    [self downloadAppInfo:^(NSString *sucess) {
        NSLog(@"block %@",sucess);
        dispatch_group_leave(group);
    } failure:^(NSError *error) {
    }];
    dispatch_group_notify(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),^{
        NSLog(@"block 1 Notified");
    });


    dispatch_group_enter(group);
    [self getAvailableHosts:^(NSString *sucess) {
        NSLog(@"block 2");
        dispatch_group_leave(group);
    } failure:^(NSError *error) {
    }];
    dispatch_group_notify(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),^{
        NSLog(@"block 2 Notified");
    });

    dispatch_group_enter(group);
    [self getAvailableServicesvoid:^(NSString *sucess) {
        NSLog(@"block 3");
        dispatch_group_leave(group);
    } failure:^(NSError *error) {
    }];
    dispatch_group_notify(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),^{
        NSLog(@"block 3 Notified");
    });


    dispatch_group_enter(group);
    [self getAvailableActions:^(NSString *sucess) {
        NSLog(@"block 4");
        dispatch_group_leave(group);
    } failure:^(NSError *error) {
    }];
    dispatch_group_notify(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),^{
        NSLog(@"block 4 Notified");
    });
    
    NSDictionary *dict10 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Alternate Navlog2",@"name",@"NO", @"select", nil];
    NSDictionary *dict11 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Alternate Navlog3",@"name",@"NO", @"select", nil];
    NSDictionary *dict12 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Alternate Navlog4",@"name",@"NO", @"select", nil];


    
//    for(Appliance *appliance in _mutAppliances) {
//      dispatch_group_async(
//         group,
//         dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//           dispatch_semaphore_t sem = dispatch_semaphore_create( 0 );
//
//           NSLog(@"Block START");
//
//           [appliance downloadAppInfo:^{
//              NSLog(@"Block SUCCESS");
//                dispatch_semaphore_signal(sem);
//           }
//           failure:^(NSError *error){
//             NSLog(@"Block FAILURE");
//             dispatch_semaphore_signal(sem);
//           }];
//
//           dispatch_semaphore_wait(sem, DISPATCH_TIME_FOREVER);
//
//           NSLog(@"Block END");
//     });
//
//     dispatch_group_notify(
//       group,
//       dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),^{
//         NSLog(@"FINAL block");
//         success();
//     });
//    }
    
    
    
    
    
    
}

- (void)downloadAppInfo:(void(^)(NSString *str_value))completionBlock
                failure:(void(^)(NSError *error))failure{
    
    NSString *str_val  = @"block 1";
    completionBlock(str_val);
}
- (void)getAvailableHosts:(void(^)(NSString *str_value))completionBlock
                  failure:(void(^)(NSError *error))failure{
    NSString *str_val  = @"block 2";
    completionBlock(str_val);

}
- (void)getAvailableServicesvoid:(void(^)(NSString *str_value))completionBlock
                     failure:(void(^)(NSError *error))failure{
    NSString *str_val  = @"block 3";
    completionBlock(str_val);

}
- (void)getAvailableActions:(void(^)(NSString *str_value))completionBlock
                    failure:(void(^)(NSError *error))failure{
    NSString *str_val  = @"block 4";
    completionBlock(str_val);
}















@end





































