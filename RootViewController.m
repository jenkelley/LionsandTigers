//
//  RootViewController.m
//  LionsandTigers
//
//  Created by Jen Kelley on 3/18/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"


@interface RootViewController ()
<
TopViewControllerDelegate,
HUDViewControllerDelegate,
UINavigationControllerDelegate
>

@property (weak, nonatomic) IBOutlet UIView *topContainerView;
@property TopViewController *tvc;
@property HUDViewController *hvc;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tvc = [TopViewController new];
    self.hvc = [HUDViewController new];

    UINavigationController *navController = self.childViewControllers[1];
    self.tvc = navController.childViewControllers[0];

    self.tvc.delegate = self;
    self.hvc.delegate = self;



}




- (void)topRevealButtonTapped:(id)button viewController:(UIViewController *)viewController {
    
[UIView animateWithDuration:1.0 animations:^{
    self.rightConstraint.constant = -90;
    self.leftConstraint.constant = 90;
}];


}


@end
