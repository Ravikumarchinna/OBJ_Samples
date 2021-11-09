//
//  ViewController.m
//  Sample_OBJC
//
//  Created by Ravikumar on 8/28/21.
//

#import "ViewController.h"
#define MAXM    5

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

//    UIButton *btn_title=[UIButton buttonWithType:UIButtonTypeCustom ];
//    [btn_title setFrame:CGRectMake(50, 80, 20.0, 20.0)];
//    [btn_title setBackgroundImage:[UIImage imageNamed:@"radio_slctd.png"] forState:UIControlStateNormal];
//    [btn_title setImageEdgeInsets:UIEdgeInsetsMake(0.0, 0.0, 0, -30)];
//    [btn_title setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -60)];
//    [btn_title setTitle:@"Title" forState:UIControlStateNormal];
//    [btn_title setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [self.view addSubview:btn_title];
//
//    NSMutableArray *arr =[NSMutableArray new];
//
//    for (int k=0; k<5; k++) {
//        NSMutableDictionary *yourMutableDictionary = [[NSMutableDictionary alloc] init];
//        [yourMutableDictionary setObject:[NSString stringWithFormat:@"%d",k+1] forKey:@"Index"];
//        [yourMutableDictionary setObject:@"" forKey:@"2"];
//
//        [arr addObject:yourMutableDictionary];
//    }
//    NSLog(@"dict ---->%@",arr);
   
//    int a = 10;
//    int b = 20;
//
//    a = a+b; //  10+20 = 30
//    b = a-b; // 30-20 = 10
//    a = a-b; // 30-10 = 20
//    NSLog(@" a->%d b value ->%d",a,b);

    for (int i=0; i<5; i++) {
        
        for (int k=0; k<i; k++) {
            printf("* ");
        }
        printf("\n");
    }
    

//
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//
//        NSLog(@"Entered backgroung Queue ---->");
//       __block NSString *str_elemts;
//        [self saveWithCompletionBlock:^(NSString *elements) {
//            NSLog(@"Entered Block Method ---->");
//            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//                NSLog(@"Entered Block Method and background Queue ---->");
//            str_elemts = elements;
//            });
//        }];
//        dispatch_async(dispatch_get_main_queue(), ^(void) {
//            self->_lbl_text.text = str_elemts;
//            NSLog(@"dict ---->%@",str_elemts);
//            NSLog(@"Entered Main Queue ---->");
//
//        });
//    });
    
}

-(void)saveWithCompletionBlock: (void (^)(NSString *elements))completionBlock{
    
    NSString *str_response;
    for (int k=0; k<10000; k++) {
        
        if (k == 9999) {
            str_response = [NSString stringWithFormat:@"%d",k];
        }
    }
    completionBlock(str_response);
}

-(void)extraNavloga:(NSDictionary *)dictionary tag:(NSString *)strBaseTag{
    
    
// extraNavlogs:
    
    
    NSMutableArray *arrm_navlog2 = [NSMutableArray new];
    NSMutableArray *arrm_navlog3 = [NSMutableArray new];
    NSMutableArray *arrm_navlog4 = [NSMutableArray new];
    NSMutableArray *arrm_navlog5 = [NSMutableArray new];
    
        NSSortDescriptor *sortByName = [NSSortDescriptor sortDescriptorWithKey:@"DisplaySequence.intValue" ascending:YES];
        NSArray *sortDescriptors = [NSArray arrayWithObject:sortByName];
        
    if ([[dictionary objectForKey:strBaseTag]valueForKey:@"NavLogAlternate2"]) {
        
        NSMutableDictionary *dictm_AltNavLogRoute2 = [[dictionary objectForKey:strBaseTag]valueForKey:@"NavLogAlternate2"];
        NSArray *aryValues2 = [dictm_AltNavLogRoute2 allValues];
        NSMutableArray *allt2 = [NSMutableArray new];
        for (int i = 0; i < aryValues2.count; i++)
        {
            if ([aryValues2[i] isKindOfClass:[NSDictionary class]])
            {
                NSMutableDictionary *dict=[aryValues2[i] mutableCopy];
                [dict setValue:@"notskiped" forKey:@"skip"];
                [dict setValue:@"" forKey:@"Notes"];
                [dict setValue:@"" forKey:@"diff"];
                [dict setValue:@"" forKey:@"difftime"];
                [dict setValue:@"" forKey:@"ETAFULL"];
                [dict setValue:@"" forKey:@"ATAFULL"];
                [allt2 addObject:dict];
            }
            else
            {
                if ([aryValues2[i] isKindOfClass:[NSArray class]])
                {
                    NSArray *ary1=aryValues2[i];
                    for(int i=0;i<[ary1 count];i++)
                    {
                        NSMutableDictionary *dict=[ary1[i] mutableCopy];
                        [dict setValue:@"notskiped" forKey:@"skip"];
                        [dict setValue:@"" forKey:@"Notes"];
                        [dict setValue:@"" forKey:@"diff"];
                        [dict setValue:@"" forKey:@"difftime"];
                        [dict setValue:@"" forKey:@"ETAFULL"];
                        [dict setValue:@"" forKey:@"ATAFULL"];
                        [allt2 addObject:dict];
                    }
                }
            }
        }
        
        NSArray *sortedArray2 = [allt2 sortedArrayUsingDescriptors:sortDescriptors];
        for (int i = 0; i < sortedArray2.count; i++){
            [arrm_navlog2 addObject:sortedArray2[i]];
        }
    }
        //#pragma mark ************************************** Part 3 **************************************

    
    if ([[dictionary objectForKey:strBaseTag]valueForKey:@"NavLogAlternate3"]) {

    NSMutableDictionary *dictm_AltNavLogRoute3 = [[dictionary objectForKey:strBaseTag]valueForKey:@"NavLogAlternate3"];
        
        NSArray *aryValues3 = [dictm_AltNavLogRoute3 allValues];
        NSMutableArray *allt3 = [NSMutableArray new];
        for (int i = 0; i < aryValues3.count; i++)
        {
            if ([aryValues3[i] isKindOfClass:[NSDictionary class]])
            {
                NSMutableDictionary *dict=[aryValues3[i] mutableCopy];
                [dict setValue:@"notskiped" forKey:@"skip"];
                [dict setValue:@"" forKey:@"Notes"];
                [dict setValue:@"" forKey:@"diff"];
                [dict setValue:@"" forKey:@"difftime"];
                [dict setValue:@"" forKey:@"ETAFULL"];
                [dict setValue:@"" forKey:@"ATAFULL"];
                [allt3 addObject:dict];
            }
            else
            {
                if ([aryValues3[i] isKindOfClass:[NSArray class]])
                {
                    NSArray *ary1=aryValues3[i];
                    for(int i=0;i<[ary1 count];i++)
                    {
                        NSMutableDictionary *dict=[ary1[i] mutableCopy];
                        [dict setValue:@"notskiped" forKey:@"skip"];
                        [dict setValue:@"" forKey:@"Notes"];
                        [dict setValue:@"" forKey:@"diff"];
                        [dict setValue:@"" forKey:@"difftime"];
                        [dict setValue:@"" forKey:@"ETAFULL"];
                        [dict setValue:@"" forKey:@"ATAFULL"];
                        [allt3 addObject:dict];
                    }
                }
            }
        }
        NSArray *sortedArray3 = [allt3 sortedArrayUsingDescriptors:sortDescriptors];
        for (int i = 0; i < sortedArray3.count; i++){
            [arrm_navlog3 addObject:sortedArray3[i]];
        }
    }
        
        NSMutableDictionary *dictm_AltNavLogRoute4 = [[dictionary objectForKey:strBaseTag]valueForKey:@"NavLogAlternate4"];
        
        NSArray *aryValues4 = [dictm_AltNavLogRoute4 allValues];
        NSMutableArray *allt4 = [NSMutableArray new];
        for (int i = 0; i < aryValues4.count; i++)
        {
            if ([aryValues4[i] isKindOfClass:[NSDictionary class]])
            {
                NSMutableDictionary *dict=[aryValues4[i] mutableCopy];
                [dict setValue:@"notskiped" forKey:@"skip"];
                [dict setValue:@"" forKey:@"Notes"];
                [dict setValue:@"" forKey:@"diff"];
                [dict setValue:@"" forKey:@"difftime"];
                [dict setValue:@"" forKey:@"ETAFULL"];
                [dict setValue:@"" forKey:@"ATAFULL"];
                [allt4 addObject:dict];
            }
            else
            {
                if ([aryValues4[i] isKindOfClass:[NSArray class]])
                {
                    NSArray *ary1=aryValues4[i];
                    for(int i=0;i<[ary1 count];i++)
                    {
                        NSMutableDictionary *dict=[ary1[i] mutableCopy];
                        [dict setValue:@"notskiped" forKey:@"skip"];
                        [dict setValue:@"" forKey:@"Notes"];
                        [dict setValue:@"" forKey:@"diff"];
                        [dict setValue:@"" forKey:@"difftime"];
                        [dict setValue:@"" forKey:@"ETAFULL"];
                        [dict setValue:@"" forKey:@"ATAFULL"];
                        [allt4 addObject:dict];
                    }
                }
            }
        }
        NSArray *sortedArray4 = [allt4 sortedArrayUsingDescriptors:sortDescriptors];
        for (int i = 0; i < sortedArray4.count; i++){
            [arrm_navlog4 addObject:sortedArray4[i]];
        }
        
        
        NSMutableDictionary *dictm_AltNavLogRoute5 = [[dictionary objectForKey:strBaseTag]valueForKey:@"NavLogAlternate5"];
        
        NSArray *aryValues5 = [dictm_AltNavLogRoute5 allValues];
        NSMutableArray *allt5 = [NSMutableArray new];
        for (int i = 0; i < aryValues5.count; i++)
        {
            if ([aryValues5[i] isKindOfClass:[NSDictionary class]])
            {
                NSMutableDictionary *dict=[aryValues5[i] mutableCopy];
                [dict setValue:@"notskiped" forKey:@"skip"];
                [dict setValue:@"" forKey:@"Notes"];
                [dict setValue:@"" forKey:@"diff"];
                [dict setValue:@"" forKey:@"difftime"];
                [dict setValue:@"" forKey:@"ETAFULL"];
                [dict setValue:@"" forKey:@"ATAFULL"];
                [allt5 addObject:dict];
            }
            else
            {
                if ([aryValues5[i] isKindOfClass:[NSArray class]])
                {
                    NSArray *ary1=aryValues5[i];
                    for(int i=0;i<[ary1 count];i++)
                    {
                        NSMutableDictionary *dict=[ary1[i] mutableCopy];
                        [dict setValue:@"notskiped" forKey:@"skip"];
                        [dict setValue:@"" forKey:@"Notes"];
                        [dict setValue:@"" forKey:@"diff"];
                        [dict setValue:@"" forKey:@"difftime"];
                        [dict setValue:@"" forKey:@"ETAFULL"];
                        [dict setValue:@"" forKey:@"ATAFULL"];
                        [allt5 addObject:dict];
                    }
                }
            }
        }
        NSArray *sortedArray5 = [allt5 sortedArrayUsingDescriptors:sortDescriptors];
        for (int i = 0; i < sortedArray5.count; i++){
            [arrm_navlog5 addObject:sortedArray5[i]];
        }
        
}

@end
