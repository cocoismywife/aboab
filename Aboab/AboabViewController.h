//
//  AboabViewController.h
//  Aboab
//
//  Created by Wu William on 11-8-13.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboabViewController : UIViewController <UIWebViewDelegate, UIActionSheetDelegate>

@property (nonatomic, assign) IBOutlet UIWebView *webView;

- (IBAction)popupMenu:(id)sender;

@end
