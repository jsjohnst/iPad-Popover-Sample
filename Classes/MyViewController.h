//
//  MyViewController.h
//  My
//
//  Created by duivesteyn.net on 13.04.10.
//  Copyright de 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyViewControllerForPopover.h"
@interface MyViewController : UIViewController <UIPopoverControllerDelegate>  {
	
	UIPopoverController *popoverController;
	
}

@property(nonatomic,retain)UIPopoverController *popoverController;
-(IBAction)someAction:(id)sender;
-(IBAction)pop:(id)sender;
@end



