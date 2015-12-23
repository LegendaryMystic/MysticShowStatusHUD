//
//  MBProgressHUD+DL.h
//  RedPacket_Merchant
//
//  Created by Edward on 15/12/15.
//  Copyright © 2015年 Mystic. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (DL)
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)showError:(NSString *)error toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;


+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;

+ (MBProgressHUD *)showMessage:(NSString *)message;

+ (void)hideHUDForView:(UIView *)view;
+ (void)hideHUD;

@end
