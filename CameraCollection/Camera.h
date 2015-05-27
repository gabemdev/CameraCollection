//
//  Camera.h
//  CameraCollection
//
//  Created by Rockstar. on 5/15/15.
//  Copyright (c) 2015 BitLaunch. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface Camera : NSObject

@property UIImage *cameraImage;

- (instancetype)initWithImage:(UIImage *)image;

@end
