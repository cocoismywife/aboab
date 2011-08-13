//
//  AboabAppDelegate.h
//  Aboab
//
//  Created by Wu William on 11-8-14.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AboabViewController;

@interface AboabAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet AboabViewController *viewController;

@end
