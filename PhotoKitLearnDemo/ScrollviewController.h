//
//  ScrollviewController.h
//  PhotoKitLearnDemo
//
//  Created by wujianlin on 16/3/28.
//  Copyright © 2016年 VR-S. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Photos/Photos.h>
@interface ScrollviewController : UIViewController
@property (strong) PHAsset *asset;
@property (strong) PHAssetCollection *assetCollection;

@property (strong) PHFetchResult *assetsFetchResult;
@end
