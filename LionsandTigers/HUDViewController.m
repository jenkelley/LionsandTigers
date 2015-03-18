//
//  HUDViewController.m
//  LionsandTigers
//
//  Created by Jen Kelley on 3/18/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

//@property NSMutableArray *photosArray;

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)onLionsButtonTapped:(id)sender {
    [self.delegate lionsButtonTapped:sender];

}
- (IBAction)onTigersButtonTapped:(id)sender {
    [self.delegate tigersButtonTapped:sender];
}




@end
