//
//  UIViewController+DL.m
//  MysticShowStatusHUD
//
//  Created by Edward on 15/12/15.
//  Copyright © 2015年 Mystic. All rights reserved.
//

#import "UIViewController+DL.h"

@implementation UIViewController (DL)
- (void)showMessage:(NSString *)string
{
    UILabel *label = [[UILabel alloc] init];
    label.text = string;
    label.font = [UIFont systemFontOfSize:18];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor blackColor];
//    label.frame = CGRectMake(0, 0, 200, 35);
    
    [label sizeToFit];
//    label.preferredMaxLayoutWidth = 200;
//    CGRect tempFrame ;
//    tempFrame.size.height = 35;
//    label.frame = tempFrame;
//    label.numberOfLines = 2;
    
    
    label.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.75);
    label.alpha = 0.0;
    label.layer.cornerRadius = 5;
    label.clipsToBounds = YES;
    [self.view addSubview:label];
    
    [UIView animateWithDuration:0.1 animations:^{
        label.alpha = 0.6;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5 delay:1.5 options:UIViewAnimationOptionCurveLinear animations:^{
            label.alpha = 0.0;
        } completion:^(BOOL finished) {
            [label removeFromSuperview];
        }];
    }];
}

@end
