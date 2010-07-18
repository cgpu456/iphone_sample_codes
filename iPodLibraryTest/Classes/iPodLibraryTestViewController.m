//
//  iPodLibraryTestViewController.m
//  iPodLibraryTest
//
//  Created by Manabu Sato on 10/07/18.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "iPodLibraryTestViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation iPodLibraryTestViewController

@synthesize webView = _webView;

- (void) showIndicator {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void) hideIndicator {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mt2k.sakura.ne.jp/docs/bridge_test.html"]]];     
}

// //////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark UIWebViewDelegate

/**
 * iPodで再生中の曲名をwebView側のjavascriptにセットする
 */
 - (void) webViewDidFinishLoad:(UIWebView *)webView {
    [self hideIndicator];
    MPMusicPlayerController *myPlayer = [MPMusicPlayerController iPodMusicPlayer];
    NSString *songTitle = [myPlayer.nowPlayingItem valueForProperty:MPMediaItemPropertyTitle];
    NSString *songArtist = [myPlayer.nowPlayingItem valueForProperty:MPMediaItemPropertyArtist];    
    NSString *javascript = [NSString stringWithFormat:@"setSong({title:'%@',artist:'%@'});",songTitle,songArtist];
    [_webView stringByEvaluatingJavaScriptFromString:javascript];
}

- (void) webViewDidStartLoad:(UIWebView *)webView {
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
