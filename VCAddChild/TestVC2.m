//
//  TestVC2.m
//  VCAddChild
//
//  Created by wcj on 2020/6/8.
//  Copyright © 2020 wcj. All rights reserved.
//

#import "TestVC2.h"

@interface TestVC2 ()

@end

@implementation TestVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
}

@end
