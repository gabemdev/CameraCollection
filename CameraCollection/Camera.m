//
//  Camera.m
//  CameraCollection
//
//  Created by Rockstar. on 5/15/15.
//  Copyright (c) 2015 BitLaunch. All rights reserved.
//

#import "Camera.h"

@implementation Camera

- (instancetype)initWithImage:(UIImage *)image {
    if ((self = [super init])) {
        self.cameraImage = image;
    }
    return self;
}

@end
