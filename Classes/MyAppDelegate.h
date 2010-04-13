//
//  MyAppDelegate.h
//  My
//
//  Created by duivesteyn.net on 13.04.10.
//  Copyright de 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyViewController;

@interface MyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MyViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MyViewController *viewController;

@end

