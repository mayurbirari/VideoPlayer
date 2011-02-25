//
//  RootViewController.m
//  VideoPlayer
//
//  Created by Mayur Birari on 25/02/11.
//  Copyright 2011 QUAGNITIA. All rights reserved.
//

#import "RootViewController.h"
#import <MediaPlayer/MediaPlayer.h>


@implementation RootViewController


#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	
	//dont forget to add your video url
	NSURL *url = [NSURL URLWithString:@"Your respected video URL"];
    MPMoviePlayerController *player =[[MPMoviePlayerController alloc] initWithContentURL: url];
    [[player view] setFrame: [self.view bounds]];  // frame must match parent view
    [self.view addSubview: [player view]];
    [player play];
	
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/


 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait || UIInterfaceOrientationLandscapeLeft || UIInterfaceOrientationLandscapeRight);
}
 



#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

