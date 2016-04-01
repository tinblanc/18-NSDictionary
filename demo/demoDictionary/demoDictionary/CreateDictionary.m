//
//  CreateDictionary.m
//  demoDictionary
//
//  Created by Tin Blanc on 3/31/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "CreateDictionary.h"

@implementation CreateDictionary

-(void) viewDidLoad{
    [super viewDidLoad];
    
    // load dữ liệu từ file
    NSDictionary* dic = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist" ]];
    
    NSLog(@"%@" , dic);
    
    // Cách khai báo dữ liệu khác
    NSDictionary* dic02 = @{@"name" : @" Exciter" , @"color" : @"black" , @"feul Injection" : @true };
    NSLog(@"%@", dic02);
    
    // so sánh 2 cách truy vấn
    if (dic02[@"model"] == [dic02 objectForKey:@"model" ]) {
        NSLog(@"They are same");
    }
    
    NSLog(@"All Keys : %@", [dic02 allKeys ]);
    NSLog(@"All Values : %@", [dic02 allValues]);
}
@end
