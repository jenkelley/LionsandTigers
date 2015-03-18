//
//  HUDViewController.h
//  LionsandTigers
//
//  Created by Jen Kelley on 3/18/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDViewControllerDelegate <NSObject>

@optional

-(void)tigersButtonTapped:(UIButton *)sender;

-(void)lionsButtonTapped:(UIButton *)sender;

@end


@interface HUDViewController : UIViewController

@property (nonatomic, assign) id <HUDViewControllerDelegate> delegate;

@end
