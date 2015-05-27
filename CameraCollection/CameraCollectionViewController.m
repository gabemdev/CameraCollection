//
//  CameraCollectionViewController.m
//  CameraCollection
//
//  Created by Rockstar. on 5/15/15.
//  Copyright (c) 2015 BitLaunch. All rights reserved.
//

#import "CameraCollectionViewController.h"
#import "CameraCell.h"
#import "Camera.h"

@interface CameraCollectionViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property NSMutableArray *faces;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CameraCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self.collectionView registerClass:[CameraCell class] forCellWithReuseIdentifier:@"Cell"];
    NSArray *imageArray = [NSArray arrayWithObjects:
                           [UIImage imageNamed:@"8"],
                           [UIImage imageNamed:@"27"],
                           [UIImage imageNamed:@"35"], [UIImage imageNamed:@"40"], [UIImage imageNamed:@"87"], [UIImage imageNamed:@"93"], nil];
    self.faces = [NSMutableArray new];
    for (UIImage *newImage in imageArray) {
        Camera *model = [[Camera alloc] initWithImage:newImage];
        [self.faces addObject:model];
    }
    [self.collectionView reloadData];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CameraCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.cameraImageView.image = [UIImage imageNamed:@"Cancel"];
    } else {
        Camera *model = self.faces[indexPath.row];
        cell.cameraImageView.image = model.cameraImage;
    }

    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.faces.count;
}

@end
