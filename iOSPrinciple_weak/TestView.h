//
//  TestView.h
//  iOSPrinciple_weak
//
//  Created by WhatsXie on 2018/5/17.
//  Copyright © 2018年 WhatsXie. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^Block) (int a);
@interface TestView : UIView
@property (nonatomic,copy) Block block;

@end
