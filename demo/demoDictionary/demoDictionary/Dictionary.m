//
//  Dictionary.m
//  demoDictionary
//
//  Created by Tin Blanc on 3/31/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "Dictionary.h"

@interface Dictionary ()
@property (weak, nonatomic) IBOutlet UITextField *text;
@property (weak, nonatomic) IBOutlet UILabel *result;



@end

@implementation Dictionary
{
    NSMutableDictionary *dictionary;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self.result sizeToFit];
    
    
    dictionary = [NSMutableDictionary new];
    
    NSArray *arrA = [NSArray arrayWithObjects:@"Alive", @"Answer", @"Amen", nil];
    NSArray *arrB = [NSArray arrayWithObjects:@"Book", @"Brother", nil];
    NSArray *arrC = [NSArray arrayWithObjects:@"Children", @"Cook", nil];

    [dictionary setObject:arrA forKey:@"a"];
    [dictionary setObject:arrB forKey:@"b"];
    [dictionary setObject:arrC forKey:@"c"];
    
    
    
}

- (IBAction)search:(id)sender {
    
    NSString *stringToSearch = self.text.text;
    
    NSString *firstCharacter = [stringToSearch substringToIndex:1];
    
    NSArray *array = [dictionary objectForKey:firstCharacter];
    
    
    // search tương đối
  
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF contains[c] %@",stringToSearch]; // if you need case sensitive search avoid '[c]' in the predicate
    
    NSArray *results = [array filteredArrayUsingPredicate:predicate];
    
    NSLog(@"%@", results);
    
    NSString *string = [results componentsJoinedByString:@", "];
    self.result.text = string;
    
}


@end
