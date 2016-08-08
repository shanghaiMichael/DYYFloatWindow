//
//  ViewController.m
//  Demo
//
//  Created by 杜阳阳 on 16/8/8.
//  Copyright © 2016年 dyy. All rights reserved.
//

#import "ViewController.h"
#import "DYYFloatWindow.h"

@interface ViewController ()

@property(nonatomic,strong) DYYFloatWindow *floatWindow;

@end

@implementation ViewController

- (void)showFloatWindow{
    _floatWindow = [[DYYFloatWindow alloc]initWithFrame:CGRectMake(0, 200, 50, 50) mainImageName:@"z.png" imagesAndTitle:@{@"ddd":@"用户中心",@"eee":@"退出登录",@"fff":@"客服中心"} bgcolor:[UIColor lightGrayColor] animationColor:[UIColor purpleColor]];
    
    __weak typeof(self) weakSelf = self;
    _floatWindow.clickBolcks = ^(NSInteger i){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[NSString stringWithFormat:@"第 %ld 个按钮",i] delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];

        //      [weakSelf hiddenWindow];
        //        UIViewController *aaa = [[UIViewController alloc] init];
        //        aaa.view.backgroundColor = [UIColor grayColor];
        //        [weakSelf presentViewController:aaa animated:YES completion:nil];
    };

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self showFloatWindow];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
