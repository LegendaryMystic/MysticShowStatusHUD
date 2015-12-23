//
//  ViewController.m
//  MysticShowStatusHUD
//
//  Created by Edward on 15/12/23.
//  Copyright © 2015年 Mystic. All rights reserved.
//

#import "ViewController.h"
#import "MysticShowStatusHUD.h"
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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
