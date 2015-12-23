# MysticShowStatusHUD
自己写了一个类，用于显示提示信息的状态栏

<p align="center"><img src="https://github.com/LegendaryMystic/MysticShowStatusHUD/blob/master/ReadMeImages/loading.tiff /></p>

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
