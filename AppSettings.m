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
        [sharedInstance registerForNotifications];
    });
    return sharedInstance;
}

//This says that this class wants to know when this notification is sent
- (void)registerForNotifications {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(respondToViewAppeared) name:@"viewAppeared" object:nil];
}

//This needs to be called because the singleton runs until the app is closed.
- (void) unregisterForNotifications {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"viewAppeared" object:nil];
}

- (void) respondToViewAppeared {
    NSLog(@"view appeared");
    
}
@end
