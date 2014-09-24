//
//  EJHViewController.m
//  WhoWantsToKnow
//
//  Created by Emily Hoehne on 9/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EJHViewController.h"

@interface EJHViewController ()

@end

@implementation EJHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //This is how you ring the bell.
    [[NSNotificationCenter defaultCenter] postNotificationName:@"viewAppeared" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
