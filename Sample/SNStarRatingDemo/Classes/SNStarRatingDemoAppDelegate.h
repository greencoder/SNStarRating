//
//  SNStarRatingDemoAppDelegate.h
//  SNStarRatingDemo
//
//  Created by Scott Newman on 8/5/10.

#import <UIKit/UIKit.h>

@class SNStarRatingDemoViewController;

@interface SNStarRatingDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SNStarRatingDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SNStarRatingDemoViewController *viewController;

@end

