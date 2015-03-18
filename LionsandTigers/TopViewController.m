//
//  TopViewController.m
//  LionsandTigers
//
//  Created by Jen Kelley on 3/18/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import "TopViewController.h"
#import "RootViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self.delegate self];
}

- (IBAction)onBackButtonTapped:(id)sender {
    [self.delegate topRevealButtonTapped:sender];

}



@end
