# MysticShowStatusHUD.h
## 自己写了一个类，用于提示信息的状态栏
![](https://github.com/LegendaryMystic/MysticShowStatusHUD/blob/master/ReadMeImages/loading.png)
## MysticShowStatusHUD.h
```objc
#import <UIKit/UIKit.h>

@interface MysticShowStatusHUD : NSObject

/**
 * 显示图片+文字信息
 */
+ (void)showImageName:(NSString *)imageName text:(NSString *)text;

/**
 * 显示图片+文字信息
 */
+ (void)showImage:(UIImage *)image text:(NSString *)text;

/**
 * 显示成功信息
 */
+ (void)showSuccess:(NSString *)text;

/**
 * 显示失败信息
 */
+ (void)showError:(NSString *)text;

/**
 * 显示正在处理的信息
 */
+ (void)showLoading:(NSString *)text;

/**
 * 显示普通信息
 */
+ (void)showText:(NSString *)text;

/**
 * 隐藏
 */
+ (void)hide;

@end

```
详情见DEMO，您只需要将我的MysticShowStatusHUD类，拖到您的项目中，在需要的地方导入MysticShowStatusHUD.h，然后就可以像我一样方便的使用它了

###另补充了我给MBProgressHUD和控制器写的分类
It‘s so easy to show a message ！
```objc
#import "MBProgressHUD+DL.h"
#import "UIViewController+DL.h"
```

```objc
//----------------------------------
- (IBAction)test:(id)sender {
    // test for MBProgressHUD + DL
    [MBProgressHUD showMessage:@"正在拼命加载中"];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [MBProgressHUD hideHUD];
    });
}

- (IBAction)test1:(id)sender {
    
    //test for UIviewController + DL
    [self showMessage:@"加载数据失败，刷新试试"];
}
```
![](https://github.com/LegendaryMystic/MysticShowStatusHUD/blob/master/ReadMeImages/MB.png)

![](https://github.com/LegendaryMystic/MysticShowStatusHUD/blob/master/ReadMeImages/DL.png)