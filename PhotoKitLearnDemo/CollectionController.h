//
//  CollectionController.h
//  PhotoKitLearnDemo
//
//  Created by wujianlin on 16/3/28.
//  Copyright © 2016年 VR-S. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Photos/Photos.h>
@interface CollectionController : UIViewController
@property(nonatomic,copy)NSString*titleString;
@property (nonatomic,strong) PHFetchResult *assetsFetchResults;
@property (nonatomic,strong) PHAssetCollection *assetCollection;
@end
