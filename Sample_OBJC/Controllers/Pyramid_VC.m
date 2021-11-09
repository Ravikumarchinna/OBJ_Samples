//
//  Pyramid_VC.m
//  Sample_OBJC
//
//  Created by Ravikumar on 10/4/21.
//

#import "Pyramid_VC.h"

@interface Pyramid_VC ()

@end

@implementation Pyramid_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
 //   alternate_NovlogsExtra ,, numberOfRowsInSection
    
//    NSDictionary *dict = [[dictionary objectForKey:self->strBaseTag]valueForKey:str_getKey1];
//    [dict_temp setObject:str_getKey forKey:@"keytitle"];
//    [dict_temp setObject:dict forKey:@"dataNavlog"];
//    [dict_temp setObject:str_getKey forKey:@"title"];

    
    [self pattern_Programm15];
}

-(void)pattern_Programm15{

        int i,j,k;
        int space =4;
        char ch = 'A';

    for (i=1; i<=5; i++) {

        for (int l=0; l<space; l++) {
            printf(" ");
        }
        
        for (j=ch; j>='A'; j--) {
            printf("%c",j);
        }
        
        for (k='B'; k<=ch; k++) {
            printf("%c",k);
        }
        
        printf("\n");
        ch++;
        space--;
    }

}





-(void)pattern_Programm14{
    
//    int i,j,k;
//    int space =1;
//    char ch = 'E';
//
//    for (i=1; i<=5; i++) {
//
//        for (j='A'; j<=ch; j++) {
//            printf("%c",j);
//        }
//
//        if (i==1) {
//            printf("\b");
//        }
//        for (int l=1; l<space; l++) {
//            printf(" ");
//        }
//
//        for (k=ch; k>='A'; k--) {
//            printf("%c",k);
//        }
//
//        printf("\n");
//        ch--;
//        space++;
//
//    }
    
        /*
    C program to print following character pyramid:
    ABCDEDCBA
    ABCD DCBA
    ABC   CBA
    AB     BA
    A       A
    */
}





// C program to print character pyramid as given below:
-(void)pattern_Programm13{
    
    int i,k;
    char ch = 'A';
    
    for (i=1; i<=5; i++) {
        
        for (k=1; k<=i; k++) {
            
            printf("%c",ch++);
        }
        printf("\n");
    }
        
//......... Out put
     /*A
        B C
        D E F
        G H I J
        K L M N O*/
}



-(void)pattern_Programm12{
    
    int i,j,k,l;
    int space =0;
    
    for (i=5; i>=1; i--) {
        
        for (l=1; l<=space; l++) {
            printf(" ");
        }

        for (j=1; j<=i; j++) {
            printf("%d",j);
        }
        
        for (k=i-1; k>=1; k--) {
            printf("%d",k);
        }
        
        printf("\n");
        space++;
    }
    /*
    C program to print following pyramid
    123454321
     1234321
      12321
       121
        1
    */
}


-(void)pattern_Programm11{
    
//    int i,j,k,l,space=8;
//
//    for (i=1; i<=5; i++) {
//
//        for (j=1; j<=i; j++) {
//            printf("%d",j);
//        }
//
//        for (k=space; k>0; k--) {
//            printf(" ");
//        }
//        for (l=i; l>=1; l--) {
//            printf("%d",l);
//        }
//        space-=2;
//        printf("\n");
//    }
    
    int i,j,k,l,space=0;

    for (i=5; i>0; i--) {

        for (j=1; j<=i; j++) {
            printf("%d",j);
        }
        for (k=space; k>0; k--) {
            printf(" ");
        }
        for (l=i; l>=1; l--) {
            printf("%d",l);
        }
        space+=2;
        printf("\n");
    }
    
}


-(void)pattern_Programm10{
    
    int i,j,k,l;
    int spcae = 4;
    for (i=1; i<=4; i++) {
        
        for (k=0; k<spcae; k++) {
            printf(" ");
        }
        l += 2;
        for (j=1; j<l; j++) {
            printf("%d ",j);
        }
        printf("\n");
        spcae--;
    }
    /*C program to print following Pyramid:
            1
           123
          12345
         1234567
        123456789
    */
}

-(void)pattern_Programm9{
    
    int i,j;
    for (i=4; i>=1; i--) {
        
        for (j=1; j<=i; j++) {
            printf("%d",j);
        }
        printf("\n");
    }
}

-(void)pattern_Programm8{
    
    int space = 5;
    int i,j,k;
    for (i=0; i<=5; i++) {
        
        for (j=0; j<i; j++) {
            if (j%2 ==0) {
                printf("0");
            }else{
                printf("1");
            }
        }
        for (k=0; k<space; k++) {
            printf("  ");
        }
        for (j=0; j<i; j++) {
            if (j%2 ==0) {
                printf("0");
            }else{
                printf("1");
            }
        }
        printf("\n");
        space--;
    }
}


-(void)pattern_Programm7{
    
    int space = 4;
    for (int i=0; i<=4; i++) {
                
        for (int k=0; k<space; k++) {
            printf(" ");
        }
        for (int j=i; j>=0; j--) {
            if (j%2 == 0) {
                printf("0");
            }else{
                printf("1");
            }
        }
        printf("\n");
        space--;
    }
}



-(void)pattern_Programm1{
    
    for (int i=0; i<5; i++) {
        for (int j=0; j<i; j++) {
            printf("* ");
        }
        printf("\n");
    }
}
-(void)pattern_Programm2{
    
    for (int i=5; i>0; i--) {
        for (int j=0; j<i; j++) {
            printf("* ");
        }
        printf("\n");
    }
}
-(void)pattern_Programm3{
    
    int space = 0;
    for (int i=5; i>0; i--) {
        for (int j=0; j<i; j++) {
            printf("* ");
        }
        printf("\n");
        space++;
    }
}
-(void)pattern_Programm4{
    
    int space = 4;
    for (int i=0; i<5; i++) {
        for (int j=0; j<i; j++) {
            printf("* ");
        }
        printf("\n");
        space--;
    }
}


-(void)pattern_Programm5{
    
    //................. Start loop 1
    int space = 0;
    for (int i=5; i>0; i--) {
        
        for (int gap=0; gap<space; gap++) {
            printf(" ");
        }
        for (int j=0; j<i; j++) {
            printf("* ");
        }
        printf("\n");
        space++;
    }
    //................. End loop 2
    
    //................. Start loop 2
    int space1 = 5;
    for (int i=0; i<=5; i++) {
        
        for (int gap=0; gap<space1; gap++) {
            printf(" ");
        }
        for (int j=0; j<i; j++) {
            printf("* ");
        }
        printf("\n");
        space1--;
    }
    //................. End loop 2
    
    
    //................ out put 1
    
    //    * * * * *
    //     * * * *
    //      * * *
    //       * *
    //        *
    //
    //        *
    //       * *
    //      * * *
    //     * * * *
    //    * * * * *
    
    //................ out put 2
    //    *
    //   * *
    //  * * *
    // * * * *
    //* * * * *
    //* * * * *
    // * * * *
    //  * * *
    //   * *
    //    *
}

-(void)pattern_Programm6{
    
    int space=0;
    int i,j;
    for (i=5; i>0; i--) {
        
        for ( j=0; j<i; j++) {
            printf("*");
        }
        for ( j=0; j<space; j++) {
            printf(" ");
        }
        for (j=0; j<i; j++) {
            printf("*");
        }
        printf("\n");
        space+= 2;
    }
}
























































@end
