//
//  VideoPlayerAppDelegate.h
//  VideoPlayer
//
//  Created by Mayur Birari on 25/02/11.
//  Copyright 2011 QUAGNITIA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VideoPlayerAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

