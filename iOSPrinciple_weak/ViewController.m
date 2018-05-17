//
//  ViewController.m
//  iOSPrinciple_weak
//
//  Created by WhatsXie on 2018/5/17.
//  Copyright © 2018年 WhatsXie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    [self weakfunc];
}

- (void)weakfunc {
    NSObject *obj = [[NSObject alloc] init];
    id __weak obj1 = obj; // 看好 weak 了
    NSLog(@"weak obj1:%@", obj1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
