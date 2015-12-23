//
//  MBProgressHUD+DL.m
//  RedPacket_Merchant
//
//  Created by Edward on 15/12/15.
//  Copyright © 2015年 Mystic. All rights reserved.
//
#import "MBProgressHUD+DL.h"

@implementation MBProgressHUD (DL)
#pragma mark show message
+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
   
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
//    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view labelText:text animated:YES];
    hud.labelText = text;
    
    // set image
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
    
    // set mode
    hud.mode = MBProgressHUDModeCustomView;
    
    // remove from super when hide
    hud.removeFromSuperViewOnHide = YES;
    
    // disappear after 1.0 second
    [hud hide:YES afterDelay:0.7];
}

#pragma mark show error message
+ (void)showError:(NSString *)error toView:(UIView *)view{
    [self show:error icon:@"error.png" view:view];
}

+ (void)showSuccess:(NSString *)success toView:(UIView *)view
{
    [self show:success icon:@"success.png" view:view];
}

#pragma mark show message
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view {
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
//    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view labelText:message animated:YES];
    hud.labelText = message;
    
    // remove from super when hide
    hud.removeFromSuperViewOnHide = YES;
    
    // mask
    hud.dimBackground = YES;
    return hud;
}

+ (void)showSuccess:(NSString *)success
{
    [self showSuccess:success toView:nil];
}

+ (void)showError:(NSString *)error
{
    [self showError:error toView:nil];
}

+ (MBProgressHUD *)showMessage:(NSString *)message
{
    return [self showMessage:message toView:nil];
}

+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}
@end
