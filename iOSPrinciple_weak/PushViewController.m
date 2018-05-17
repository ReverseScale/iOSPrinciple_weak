//
//  PushViewController.m
//  iOSPrinciple_weak
//
//  Created by WhatsXie on 2018/5/17.
//  Copyright © 2018年 WhatsXie. All rights reserved.
//

#import "PushViewController.h"
#import "TestView.h"

@interface PushViewController ()
@property (nonatomic,strong) TestView *testView;
@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self weakBlock];
}

- (void)weakBlock {
    __weak typeof(self)weakSelf = self;

    self.testView =  [[TestView alloc] init];

    self.testView.block = ^(int a){
        [weakSelf test];

        NSLog(@"block self:%@",self);
    };

    self.testView.block(10);

    [self.view addSubview:self.testView];
}

- (void)test {
    NSLog(@"test clicked");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc{
    NSLog(@"dealloc");
}

@end
