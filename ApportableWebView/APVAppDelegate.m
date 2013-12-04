//
//  APVAppDelegate.m
//  ApportableWebView
//
//  Created by Sandeep Mistry on 2013-12-04.
//  Copyright (c) 2013 Sandeep Mistry. All rights reserved.
//

#import "APVViewController.h"

#import "APVAppDelegate.h"

@implementation APVAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] init];
    
    self.window.rootViewController = [[APVViewController alloc] init];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
