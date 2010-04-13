//
//  MyViewController.m
//  My
//
//  Created by duivesteyn.net on 13.04.10.
//  Copyright de 2010. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController
@synthesize popoverController;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/
-(IBAction)pop:(id)sender{
	//This uses a viewcontroller/view pair in interface builder.  
	// Simply alloc and init MyViewControllerForPopover if you're doing it all in code for some reason
	MyViewControllerForPopover  *myViewControllerForPopover = [[MyViewControllerForPopover alloc] initWithNibName:@"MyViewControllerForPopover" bundle:nil ];    
	UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:myViewControllerForPopover];
    self.popoverController = popover;          // we retain a pointer so we can release later or re-use
    popoverController.delegate = self;          // This MyViewController object will be the delegate for the popover
	// popoverController.popoverContentSize = CGSizeMake(320,480);     // this changed with beta 2 so no longer works
	
	[popover release];          // retained in   self.popoverController
	[myViewControllerForPopover release];     // passed into initWithContentViewController
	
	CGPoint point = {670,600}; // where they tapped on screen, taken from UIEvent, if you like
	CGSize size = {300,300}; // give a size range, maybe the size of your table cell
	[popoverController presentPopoverFromRect:CGRectMake(point.x, point.y, size.width, size.height) 
							 inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}


-(IBAction)someAction:(id)sender     // IBAction so you can wire it to a button
{
	//This uses a viewcontroller/view pair in interface builder.  
	// Simply alloc and init MyViewControllerForPopover if you're doing it all in code for some reason
	MyViewControllerForPopover  *myViewControllerForPopover = [[MyViewControllerForPopover alloc] initWithNibName:@"MyViewControllerForPopover" bundle:nil ];    
	UIPopoverController *popover = [[UIPopoverController alloc] initWithContentViewController:myViewControllerForPopover];
    self.popoverController = popover;          // we retain a pointer so we can release later or re-use
    popoverController.delegate = self;          // This MyViewController object will be the delegate for the popover
	// popoverController.popoverContentSize = CGSizeMake(320,480);     // this changed with beta 2 so no longer works
	
	[popover release];          // retained in   self.popoverController
	[myViewControllerForPopover release];     // passed into initWithContentViewController
	
	[popoverController presentPopoverFromBarButtonItem:sender  permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
	
}

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController {
    
    // do something here if you want to respond to dismissal
}


-(void)doStuffForMyViewControllerForPopover // made up method
{
	// if user clcked something within the controller in the popover then send notification or set for action 
	// to dismiss popover
	[popoverController dismissPopoverAnimated:YES];
	
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
