//
//  TopViewController.h
//  LionsandTigers
//
//  Created by Jen Kelley on 3/18/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@protocol TopViewControllerDelegate <NSObject>

@optional

- (void)topRevealButtonTapped:(id)button;

@end

@interface TopViewController : UIViewController

@property (nonatomic, assign) id <TopViewControllerDelegate> delegate;

@end
