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
#import "CustomCollectionViewCell.h"


@interface RootViewController ()
<
TopViewControllerDelegate,
HUDViewControllerDelegate,
UINavigationControllerDelegate
//UICollectionViewDataSource,
//UICollectionViewDelegate
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
    self.hvc = self.childViewControllers[0];

    self.tvc.delegate = self;
    self.hvc.delegate = self;



}



- (void)tigersButtonTapped:(UIButton *)sender {
    self.tvc.photosArray = [[NSMutableArray alloc] initWithObjects:[UIImage imageNamed:@"tiger1"], [UIImage imageNamed:@"tiger2"], [UIImage imageNamed:@"tiger3"], nil];
    CustomCollectionViewCell *cell;
    for (UIImage *image in self.tvc.photosArray) {
        cell.cellImageView.image = image;

    }
    self.rightConstraint.constant = 0;
    self.leftConstraint.constant = 0;
    [self.tvc.collectionView reloadData];


}


- (void)lionsButtonTapped:(UIButton *)sender {
    self.tvc.photosArray = [[NSMutableArray alloc] initWithObjects:[UIImage imageNamed:@"lion1"], [UIImage imageNamed:@"lion2"], [UIImage imageNamed:@"lion3"], nil];
    CustomCollectionViewCell *cell;
    for (UIImage *image in self.tvc.photosArray) {
        cell.cellImageView.image = image;

    }

    self.rightConstraint.constant = 0;
    self.leftConstraint.constant = 0;
    [self.tvc.collectionView reloadData];

}


- (void)topRevealButtonTapped:(id)button viewController:(UIViewController *)viewController {
    

    self.rightConstraint.constant = -100;
    self.leftConstraint.constant = 100;



}


@end
