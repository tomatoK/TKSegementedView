//
//  ViewController.m
//  SampleDemo
//
//  Created by qiukai on 15/8/9.
//  Copyright (c) 2015年 TK. All rights reserved.
//

#import "ViewController.h"
#import "TKSegementedView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initSegementedView];
}

- (void)initSegementedView
{
    UIFont *titleFont = [UIFont systemFontOfSize:13];
    // 综合
    TKSegementedItemStatus *compositeNormal = [TKSegementedItemStatus statusWithTitle:@"综合⬇️" titleColor:[UIColor blackColor] titleFont:titleFont image:nil backgroundImage:nil becomeCurrentStatusBlock:^{
        NSLog(@"综合默认状态");
    }];
    TKSegementedItemStatus *compositeSelected = [TKSegementedItemStatus statusWithTitle:@"综合⬆️" titleColor:[UIColor redColor] titleFont:titleFont image:nil backgroundImage:nil becomeCurrentStatusBlock:^{
        NSLog(@"综合刚刚被选中");
    }];
    TKSegementedItem *compositeItem = [TKSegementedItem itemWithNormalStatus:compositeNormal selectedStatus:compositeSelected otherStatus:nil];
    
    // 销量
    TKSegementedItemStatus *volumeNormal = [TKSegementedItemStatus statusWithTitle:@"销量" titleColor:[UIColor blackColor] titleFont:titleFont image:nil backgroundImage:nil becomeCurrentStatusBlock:^{
        NSLog(@"销量默认状态");
    }];
    TKSegementedItemStatus *volumeSelected = [TKSegementedItemStatus statusWithTitle:@"销量" titleColor:[UIColor redColor] titleFont:titleFont image:nil backgroundImage:nil becomeCurrentStatusBlock:^{
        NSLog(@"分类刚刚被选中");
    }];
    TKSegementedItem *volumeItem = [TKSegementedItem itemWithNormalStatus:volumeNormal selectedStatus:volumeSelected otherStatus:nil];
    
    UIImage *image1 = [UIImage imageNamed:@"1@3x"];
    UIImage *image2 = [UIImage imageNamed:@"2@3x"];
    UIImage *image3 = [UIImage imageNamed:@"3@3x"];
    
    // 价格
    TKSegementedItemStatus *priceNormal = [TKSegementedItemStatus statusWithTitle:@"价格" titleColor:[UIColor blackColor] titleFont:titleFont image:nil backgroundImage:image1 becomeCurrentStatusBlock:^{
        NSLog(@"价格默认状态");
    }];
    TKSegementedItemStatus *priceSelected = [TKSegementedItemStatus statusWithTitle:@"价格" titleColor:[UIColor redColor] titleFont:titleFont image:nil backgroundImage:image2 becomeCurrentStatusBlock:^{
        NSLog(@"价格升序状态");
    }];
    TKSegementedItemStatus *priceOthers = [TKSegementedItemStatus statusWithTitle:@"价格" titleColor:[UIColor blueColor] titleFont:titleFont image:nil backgroundImage:image3 becomeCurrentStatusBlock:^{
        NSLog(@"价格降序状态");
    }];
    TKSegementedItem *priceItem = [TKSegementedItem itemWithNormalStatus:priceNormal selectedStatus:priceSelected otherStatus:@[priceOthers]];
    
    // 筛选
    TKSegementedItemStatus *filterNormal = [TKSegementedItemStatus statusWithTitle:@"筛选⏳" titleColor:[UIColor blackColor] titleFont:titleFont image:nil backgroundImage:nil becomeCurrentStatusBlock:^{
        self.view.backgroundColor = [UIColor whiteColor];
    }];
    
    TKSegementedItemStatus *filterSelected = [TKSegementedItemStatus statusWithTitle:@"筛选⏳" titleColor:[UIColor blackColor] titleFont:titleFont image:nil backgroundImage:nil becomeCurrentStatusBlock:^{
        self.view.backgroundColor = [UIColor redColor];
    }];
    TKSegementedItem *filterItem = [TKSegementedItem itemWithNormalStatus:filterNormal selectedStatus:filterSelected otherStatus:nil];
    
    
    // 分节view
    TKSegementedView *view = [TKSegementedView segementedViewWithSegementedItem:compositeItem, volumeItem, priceItem, filterItem, nil];
    view.frame = CGRectMake(0, 64, self.view.bounds.size.width, 35);
    view.verticalDividerInset = UIEdgeInsetsMake(10, 0, 10, 0);
    [self.view addSubview:view];
}


@end
