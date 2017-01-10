//
//  ZJYCeShiConfirmOrderViewController.h
//  ZJYCeShiConfirmOrder
//
//  Created by apple on 2017/1/9.
//  Copyright © 2017年 JunFly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZJYCeShiConfirmOrderViewController : UIViewController
- (instancetype)initWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;

@end
