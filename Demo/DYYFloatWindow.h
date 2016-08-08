//
//  DYYFloatWindow.h
//  testTab
//
//  Created by 杜阳阳 on 16/7/29.
//  Copyright © 2016年 杜阳阳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DYYFloatWindow : UIWindow

@property (nonatomic,copy) void(^clickBolcks)(NSInteger i);

//重要：所有图片都要是圆形的，程序里并没有自动处理成圆形

//  warning: frame的长宽必须相等
- (instancetype)initWithFrame:(CGRect)frame mainImageName:(NSString*)name imagesAndTitle:(NSDictionary*)imagesAndTitle bgcolor:(UIColor *)bgcolor;

// 长按雷达辐射效果
- (instancetype)initWithFrame:(CGRect)frame mainImageName:(NSString*)name imagesAndTitle:(NSDictionary*)imagesAndTitle bgcolor:(UIColor *)bgcolor animationColor:animationColor;

// 显示（默认）
- (void)showWindow;

// 隐藏
- (void)dissmissWindow;

@end
