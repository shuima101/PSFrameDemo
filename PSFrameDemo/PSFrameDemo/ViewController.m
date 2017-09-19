//
//  ViewController.m
//  PSFrameDemo
//
//  Created by 冯广勇 on 2017/9/17.
//  Copyright © 2017年 shuima. All rights reserved.
//

#import "ViewController.h"
#import "UIView+PSFrame.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *topView = [UIView new];
    topView.backgroundColor = [UIColor cyanColor];
    topView.frame = CGRectPSMake(15., 30., 345., 100.);//宽高按比例
    [self.view addSubview:topView];
    
    UIButton *btn = [UIButton buttonWithType:0];
    btn.top = topView.bottom + 10.;
    btn.left = topView.left;
    btn.right = screenWidth-15.;
    btn.height = topView.height;
    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:btn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
