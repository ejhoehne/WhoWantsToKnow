//
//  AppSettings.m
//  WhoWantsToKnow
//
//  Created by Emily Hoehne on 9/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppSettings.h"

@implementation AppSettings
+ (AppSettings *)sharedInstance {
    static AppSettings *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AppSettings alloc] init];
    });
    return sharedInstance;
}
@end
