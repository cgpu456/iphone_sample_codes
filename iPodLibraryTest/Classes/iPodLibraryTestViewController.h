//
//  iPodLibraryTestViewController.h
//  iPodLibraryTest
//
//  Created by Manabu Sato on 10/07/18.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iPodLibraryTestViewController : UIViewController <UIWebViewDelegate> {
    UIWebView *_webView;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;

@end

