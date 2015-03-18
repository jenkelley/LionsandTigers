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


@interface RootViewController () <TopViewControllerDelegate, HUDViewControllerDelegate, UIContentContainer>

@property (weak, nonatomic) IBOutlet UIView *topContainerView;
@property TopViewController *tvc;
@property HUDViewController *hvc;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tvc = [TopViewController new];
    self.hvc = [HUDViewController new];
    NSLog(@"class == %@", self.tvc.class);
    self.tvc.delegate = self;
    NSLog(@"class == %@", self.tvc.class);

    self.hvc.delegate = self;


    NSLog(@"class == %@", self.tvc.class);



}


- (void)topRevealButtonTapped:(id)button{
    NSLog(@"Delegate called");
    self.rightConstraint.constant = -40;
    self.leftConstraint.constant = 40;

}


@end
