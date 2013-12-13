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

- (id)init
{
    if(self = [super init]) {
        NSURL *url = [NSURL URLWithString:@"http://www.youtube.com/watch?v=40rAtzemb-4"];
        
        self.webViewController = [[UIWebViewController alloc] initWithTitle:@"title" URL:url overrideURLLoadingPrefix:@"jjjj" withCompletion:nil];
    }
    
    return self;
}

- (void)loadView
{
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    self.view.frame = CGRectMake(0, 0, 320, 480);
    self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.view.autoresizesSubviews = YES;
}


- (void)viewDidAppear:(BOOL)animated
{
    [self presentViewController:self.webViewController animated:YES completion:nil];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

@end
