//
//  ScrollviewController.m
//  PhotoKitLearnDemo
//
//  Created by wujianlin on 16/3/28.
//  Copyright © 2016年 VR-S. All rights reserved.
//

#import "ScrollviewController.h"

@interface ScrollviewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property(nonatomic,strong)PHCachingImageManager*imageManager;
@property(nonatomic,strong)UIImageView*pictureImageView;
@property(nonatomic,strong)UICollectionView*collectionView;


@end

@implementation ScrollviewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    UICollectionViewFlowLayout*flowOut = [[UICollectionViewFlowLayout alloc]init];
    flowOut.itemSize = CGSizeMake(375,300);
    flowOut.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //设置单元格之间的左右间隔
    flowOut.minimumInteritemSpacing = 0;
    
    flowOut.minimumLineSpacing = 0;
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 200, 375, 300) collectionViewLayout:flowOut];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    
    NSInteger indexPathRow = [_assetsFetchResult indexOfObject:_asset];
    NSLog(@"indexPathRow = %ld",indexPathRow);
    _collectionView.contentOffset = CGPointMake(375*indexPathRow, 0);
    //只允许水平滚动
    ;
    
    // _collectionView.contentOffset = CGPointMake(375 *_assetsFetchResults, 200 );
    _collectionView.scrollEnabled = YES;
    
    //设置collectionView的方向锁 ,是上下拖动tableView时拖动不了cllectionView
    _collectionView.directionalLockEnabled = YES;
    
    //翻页效果
    _collectionView.pagingEnabled = YES;
    
    //回弹效果
    _collectionView.bounces = NO;
    
    
    [self.view addSubview:self.collectionView];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.imageManager = [[PHCachingImageManager alloc] init];
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    
   
    return _assetsFetchResult.count;
    
}
- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell*cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    UIImageView*headerImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 375, 300)];
    PHAsset *asset = self.assetsFetchResult[indexPath.row];
    
    [self.imageManager requestImageForAsset:asset targetSize:CGSizeMake(375, 300) contentMode:PHImageContentModeAspectFill options:nil resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
     
        headerImageView.image = result;
        
    }];
    [cell.contentView addSubview:headerImageView];
    
    
    
    
       return cell;
    
    
}

@end
