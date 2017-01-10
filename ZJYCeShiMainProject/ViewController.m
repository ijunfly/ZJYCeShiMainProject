//
//  ViewController.m
//  ZJYCeShiMainProject
//
//  Created by apple on 2017/1/5.
//  Copyright © 2017年 JunFly. All rights reserved.
//

#import "ViewController.h"

#import <ZJYCeShiDetailServiceProtocol/ZJYCeShiDetailServiceProtocol.h>
#import <ZJYCeShiProtocolManager/ZJYCeShiProtocolManager.h>


@interface ViewController ()<ZJYCeShiDetailServiceProtocol>
@property (nonatomic, strong) UIButton *goodsButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"首页";
    
    [self.view addSubview:self.goodsButton];
    
    
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.goodsButton.frame = CGRectMake(0, 0, 100, 100);
    self.goodsButton.center = self.view.center;
    
}
#pragma mark - event
- (void)didClickGoodsButton:(UIButton *)button
{
    id<ZJYCeShiDetailServiceProtocol> goodsServiceProvide = [ZJYCeShiProtocolManager serviceProvideForProtocol:@protocol(ZJYCeShiDetailServiceProtocol)];
    
    UIViewController *goodsDetailVC = [goodsServiceProvide ceshiDetailViewControllerWithGoodsId:@"123" goodsName:@"农夫山泉矿泉水"];
    [self.navigationController pushViewController:goodsDetailVC animated:YES];
    
}


#pragma mark - getters
- (UIButton *)goodsButton
{
    if (_goodsButton == nil) {
        _goodsButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_goodsButton setTitle:@"A商品" forState:UIControlStateNormal];
        [_goodsButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_goodsButton addTarget:self action:@selector(didClickGoodsButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _goodsButton;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
