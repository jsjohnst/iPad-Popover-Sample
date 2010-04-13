//
//  MyAppDelegate.m
//  My
//
//  Created by duivesteyn.net on 13.04.10.
//  Copyright de 2010. All rights reserved.
//

#import "MyAppDelegate.h"
#import "MyViewController.h"

@implementation MyAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
