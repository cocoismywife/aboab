//
//  AboabViewController.m
//  Aboab
//
//  Created by Wu William on 11-8-13.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "AboabViewController.h"

const NSString *homePageURL = @"http://www.ucd.la/07JUL21_aobab/0810/splash.php";
const NSString *topURL = @"http://www.ucd.la/07JUL21_aobab/0810/index.php";

@implementation AboabViewController

@synthesize webView=_webView;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
	
	NSURL *url = [NSURL URLWithString: [NSString stringWithFormat:@"%@", homePageURL]];
	[self.webView loadRequest: [NSURLRequest requestWithURL: url]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	self.webView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - UIWebView delegation


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
	return YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
	
}

- ( void )webViewDidStartLoad: ( UIWebView * ) webView
{ 
	
} 

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
	
}

#pragma mark - IBAction Method
- (IBAction)popupMenu:(id)sender
{
	UIView *placeholderview=[[UIView alloc]initWithFrame:CGRectMake(0, 310, 320, 100)];
	[self.view addSubview:placeholderview];
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:@"キャンセル" destructiveButtonTitle:nil otherButtonTitles:@"ホームヘ", @"アプリTOPヘ", nil];
	[actionSheet showFromRect:CGRectMake(0,0, 320, 10) inView:placeholderview animated:YES];
	[actionSheet release];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
	if (buttonIndex == 0) {
		NSURL * url = [NSURL URLWithString: [NSString stringWithFormat:@"%@", homePageURL]];
		[self.webView loadRequest: [NSURLRequest requestWithURL: url]];	
		
	} else if (buttonIndex == 1) {
		NSURL * url = [NSURL URLWithString: [NSString stringWithFormat:@"%@", topURL]];
		[self.webView loadRequest: [NSURLRequest requestWithURL: url]];	
	}
}

@end
