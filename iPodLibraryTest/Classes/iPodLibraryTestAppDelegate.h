//
//  iPodLibraryTestAppDelegate.h
//  iPodLibraryTest
//
//  Created by Manabu Sato on 10/07/18.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iPodLibraryTestViewController;

@interface iPodLibraryTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iPodLibraryTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iPodLibraryTestViewController *viewController;

@end

