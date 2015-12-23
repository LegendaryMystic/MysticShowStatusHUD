//
//  ViewController.m
//  MysticShowStatusHUD
//
//  Created by Edward on 15/12/23.
//  Copyright © 2015年 Mystic. All rights reserved.
//

#import "ViewController.h"
#import "MysticShowStatusHUD.h"

#import "MBProgressHUD+DL.h"
#import "UIViewController+DL.h"
@interface ViewController ()

@end

@implementation ViewController

- (IBAction)success {
    [MysticShowStatusHUD showSuccess:@"加载数据成功！"];
}

- (IBAction)error {
    [MysticShowStatusHUD showError:@"登录失败！"];
}

- (IBAction)loading {
    [MysticShowStatusHUD showLoading:@"正在登录中..."];
}

- (IBAction)hide {
    [MysticShowStatusHUD hide];
}

- (IBAction)normal {
    [MysticShowStatusHUD showText:@"随便自定义的文字！！！！"];
}


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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   // test for MBProgressHUD + DL
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
