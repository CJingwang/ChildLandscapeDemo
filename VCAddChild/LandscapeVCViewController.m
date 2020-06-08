//
//  LandscapeVCViewController.m
//  VCAddChild
//
//  Created by wcj on 2020/6/8.
//  Copyright © 2020 wcj. All rights reserved.
//

#import "LandscapeVCViewController.h"
#import "AppDelegate.h"

@interface LandscapeVCViewController ()

@end

@implementation LandscapeVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"landscape";
    
    ((AppDelegate *)[UIApplication sharedApplication].delegate).allowRotation = true;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    
}

- (void)viewWillDisappear:(BOOL)animated{
    ((AppDelegate *)[UIApplication sharedApplication].delegate).allowRotation = false;
}

@end
