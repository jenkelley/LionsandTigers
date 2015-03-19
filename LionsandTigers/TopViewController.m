//
//  TopViewController.m
//  LionsandTigers
//
//  Created by Jen Kelley on 3/18/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import "TopViewController.h"
#import "RootViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController () <UICollectionViewDataSource,UICollectionViewDelegate>


@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.photosArray = [NSMutableArray new];


}

- (IBAction)onBackButtonTapped:(id)sender viewController:(UIViewController *)viewController {
    [self.delegate topRevealButtonTapped:sender viewController:viewController];
  

}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.cellImageView.image = [self.photosArray objectAtIndex:indexPath.row];
    return cell;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photosArray.count;
}




@end
