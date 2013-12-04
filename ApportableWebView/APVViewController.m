//
//  APVViewController.m
//  ApportableWebView
//
//  Created by Sandeep Mistry on 2013-12-04.
//  Copyright (c) 2013 Sandeep Mistry. All rights reserved.
//

#import "APVViewController.h"

@interface APVViewController ()

@end

@implementation APVViewController

- (void)loadView
{
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = [UIColor darkGrayColor];
    self.view.frame = CGRectMake(0, 0, 320, 480);
    self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    UIWebView *webView = [[UIWebView alloc] init];
    webView.frame = CGRectMake(20, 20, 280, 440);
    webView.delegate = self;
    webView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:webView];
    self.webView = webView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.webView.allowsInlineMediaPlayback = YES;
    self.webView.mediaPlaybackRequiresUserAction = NO;
	
    NSURL *url = [NSURL URLWithString:@"http://www.youtube.com/watch?v=40rAtzemb-4"];
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
    
    [self.webView loadRequest:urlRequest];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *documentTitle = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    
    NSLog(@"documentTitle = '%@'", documentTitle);
}

@end
