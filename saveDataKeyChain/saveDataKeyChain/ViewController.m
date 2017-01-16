//
//  ViewController.m
//  saveDataKeyChain
//
//  Created by Balasubramani Rajan on 1/3/17.
//  Copyright © 2017 Balasubramani Rajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.key =
    [[KeychainItemWrapper alloc] initWithIdentifier:@"TestAppLoginData" accessGroup:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)saveBTNAction:(id)sender{
    NSLog(@"Save");
    

    [self.key setObject:[self.uName text] forKey:(__bridge id)kSecAttrAccount];
    [self.key setObject:[self.pwd text]  forKey:(__bridge id)kSecValueData];
    
    
}
-(IBAction)retriveBTNAction:(id)sender{
    
    NSLog(@"retrive");
    
    self.BalaName.text = self.uName.text;
    self.rajanName.text = self.pwd.text;
    
    self.uNameLable.text=[self.key objectForKey:(__bridge id)kSecAttrAccount];
    self.uPwdLable.text=[self.key objectForKey:(__bridge id)kSecValueData];
    
    
}


@end
