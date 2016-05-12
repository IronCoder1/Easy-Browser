//
//  ViewController.m
//  Easy Browser
//
//  Created by MBPinTheAir on 10/05/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    NSURL *myUrl = [NSURL URLWithString:self.myTextField.text];
    
    NSURLRequest *newrequest = [[NSURLRequest alloc]initWithURL:myUrl];
    
    [self.webView loadRequest:newrequest];
    
    //self.myTextField.delegate = self;
    [self.myTextField resignFirstResponder];
    return YES;
}



//- (IBAction)openPage:(UIButton *)sender
//{
// 
//    
//    NSURL *appleUrl = [NSURL URLWithString:@"http://google.com"];
//    
//    //kicking off to safari
//  //  [[UIApplication sharedApplication] openURL:appleUrl];
//    
//    //loading locally in webview
//    NSURLRequest *newrequest = [[NSURLRequest alloc]initWithURL:appleUrl];
//    
//    [self.webView loadRequest:newrequest];
//}


@end
