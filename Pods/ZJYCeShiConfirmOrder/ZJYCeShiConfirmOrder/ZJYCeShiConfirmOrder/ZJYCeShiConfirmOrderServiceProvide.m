//
//  ZJYCeShiConfirmOrderServiceProvide.m
//  ZJYCeShiConfirmOrder
//
//  Created by apple on 2017/1/9.
//  Copyright © 2017年 JunFly. All rights reserved.
//

#import "ZJYCeShiConfirmOrderServiceProvide.h"
#import "ZJYCeShiConfirmOrderViewController.h"

#import <ZJYCeShiProtocolManager/ZJYCeShiProtocolManager.h>
#import <ZJYCeShiConfirmOrderServiceProtocol/ZJYCeShiConfirmOrderServiceProtocol.h>

@interface ZJYCeShiConfirmOrderServiceProvide ()<ZJYCeShiConfirmOrderServiceProtocol>

@end

@implementation ZJYCeShiConfirmOrderServiceProvide

+ (void)load
{
    [ZJYCeShiProtocolManager registServiceProvide:[self new] forProtocol:@protocol(ZJYCeShiConfirmOrderServiceProtocol)];
}

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete
{
    ZJYCeShiConfirmOrderViewController *confirmOrderVC = [[ZJYCeShiConfirmOrderViewController alloc] initWithGoodsId:goodsId sureComplete:sureComplete];
    return confirmOrderVC;
}

@end
