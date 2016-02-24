//
//  ViewController.m
//  MyWebView
//
//  Created by Docotel on 2/24/16.
//  Copyright © 2016 Wim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://m.kwikku.com"]];
    
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(nonnull NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    NSLog(@"Loading : %@", request.URL.absoluteString);
    
    return YES;
}

- (void)webViewDidStartLoad: (UIWebView *)webView{
    
}

- (void)webViewDidFinishLoad: (UIWebView *)webView{
    
}

- (void)webView: (UIWebView *)webView didFailLoadWithError:(nullable NSError *)error{
    NSLog(@"Error : %@", [error debugDescription]);
}
@end