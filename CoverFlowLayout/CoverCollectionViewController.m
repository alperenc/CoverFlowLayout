//
//  CoverCollectionViewController.m
//  CoverFlowLayout
//
//  Created by Alp Eren Can on 10/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "CoverCollectionViewController.h"
#import "PhotoCollectionViewCell.h"
#import "Photo.h"

@interface CoverCollectionViewController ()

@property (nonatomic, strong) NSArray *photos;

@end

@implementation CoverCollectionViewController

static NSString * const reuseIdentifier = @"photoCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[PhotoCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    self.photos = @[
                    [Photo photoWithImage:[UIImage imageNamed:@"O14A0241.jpg"] location:@"Istanbul" subject:@"Sunbathing"],
                    [Photo photoWithImage:[UIImage imageNamed:@"O14A0247.jpg"] location:@"Istanbul" subject:@"Picnic"],
                    [Photo photoWithImage:[UIImage imageNamed:@"O14A0256.jpg"] location:@"Istanbul" subject:@"Hiking"],
                    [Photo photoWithImage:[UIImage imageNamed:@"O14A0436.jpg"] location:@"Vancouver" subject:@"Picnic"],
                    [Photo photoWithImage:[UIImage imageNamed:@"O14A0438.jpg"] location:@"Vancouver" subject:@"Picnic"],
                    [Photo photoWithImage:[UIImage imageNamed:@"O14A0449.jpg"] location:@"Vancouver" subject:@"Seaside"],
                    [Photo photoWithImage:[UIImage imageNamed:@"O14A0456.jpg"] location:@"Vancouver" subject:@"Hiking"],
                    [Photo photoWithImage:[UIImage imageNamed:@"O14A0464.jpg"] location:@"Los Angeles" subject:@"Sunbathing"],
                    [Photo photoWithImage:[UIImage imageNamed:@"O14A0465.jpg"] location:@"Los Angeles" subject:@"Sunbathing"],
                    [Photo photoWithImage:[UIImage imageNamed:@"O14A0468.jpg"] location:@"Los Angeles" subject:@"Picnic"]];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    Photo *photo = self.photos[indexPath.row];
    
    // Configure the cell
//    cell.backgroundColor = [UIColor redColor];
    cell.imageView.image = photo.image;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
