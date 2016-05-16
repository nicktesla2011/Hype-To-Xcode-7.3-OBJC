//
//  ViewController.m
//Template
//
//  Created by My Company on 1/23/15.
//  Copyright (c) 2015 MyComapny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"helloXcode" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.Webview loadRequest:request];
    
    //you need this to make it fit
    
    [self.Webview setScalesPageToFit:YES];
    
    [[self.Webview scrollView] setBounces:NO];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end