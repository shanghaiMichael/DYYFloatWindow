# DYYFloatWindow
这是一个iOS上的悬浮窗

This is a Float Window in iOS


<img src="./demo.gif" align="middle" width="620" />

####Get Start
Using [CocoaPods] to get start, you can add following line to your Podfile:

	pod 'DYYFloatWindow'

####Using it
For using DYYFloatWindow, it's very simple:

	DYYFloatWindow *floatWindow = [[DYYFloatWindow alloc]initWithFrame:CGRectMake(0, 200, 50, 50) mainImageName:@"ccc.png" imagesAndTitle:@{@"ddd":@"用户中心",@"eee":@"退出登录",@"fff":@"客服中心"} bgcolor:[UIColor lightGrayColor] animationColor:[UIColor purpleColor]];
    
    floatWindow.clickBolcks = ^(NSInteger i){
        //do something;
    };