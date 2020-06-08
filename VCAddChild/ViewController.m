//
//  ViewController.m
//  VCAddChild
//
//  Created by wcj on 2020/6/8.
//  Copyright © 2020 wcj. All rights reserved.
//

#import "ViewController.h"
#import "LandscapeVCViewController.h"
#import "AppDelegate.h"
#import "TestVC2.h"

@interface ViewController ()

@property(nonatomic,strong) UIViewController *currentChild;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    ((AppDelegate *)[UIApplication sharedApplication].delegate).allowRotation = true;
    self.title = @"parentVC";
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"22" style:UIBarButtonItemStyleDone target:self action:@selector(changeChild)];
    [self.navigationItem setRightBarButtonItem:item];
    
    LandscapeVCViewController *vc = [[LandscapeVCViewController alloc] init];
    vc.view.frame = CGRectMake(0, 200, self.view.bounds.size.width, self.view.bounds.size.height);
    [self.view addSubview:vc.view];
    [self addChildViewController:vc];
    [vc didMoveToParentViewController:self];
    self.currentChild = vc;
}

- (void)changeChild{
    if (self.currentChild){
        [self.currentChild.view removeFromSuperview];
        [self.currentChild removeFromParentViewController];
    }
    
    TestVC2 *vc = [[TestVC2 alloc] init];
    vc.view.frame = CGRectMake(0, 200, self.view.bounds.size.width, self.view.bounds.size.height);
    [self.view addSubview:vc.view];
    [self addChildViewController:vc];
    [vc didMoveToParentViewController:self];
    self.currentChild = vc;
}


@end
