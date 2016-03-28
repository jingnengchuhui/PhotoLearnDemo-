//
//  SecondCell.m
//  PhotoKitLearnDemo
//
//  Created by wujianlin on 16/3/28.
//  Copyright © 2016年 VR-S. All rights reserved.
//

#import "SecondCell.h"

@implementation SecondCell
- (id)initWithFrame:(CGRect)frame
{

    self = [super initWithFrame:frame];
    if (self) {
        self.pictureImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 120, 120)];
        _pictureImageView.backgroundColor = [UIColor yellowColor];
        [self addSubview:self.pictureImageView];
    }
    return self;

}

@end
