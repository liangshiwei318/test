//
//  ViewController.m
//  加法计算器
//
//  Created by 梁世伟 on 2017/11/25.
//  Copyright © 2017年 梁世伟. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firT;
@property (weak, nonatomic) IBOutlet UITextField *secT;
@property (weak, nonatomic) IBOutlet UILabel *resultL;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    }
- (IBAction)sum:(id)sender {
    NSString *num1 = self.firT.text;
    NSString *num2 = self.secT.text;
    if (num1.length == 0) {
        [self alert:@"请输入第一个数"];
        return;
    }if (num2.length == 0) {
        [self alert:@"请输入第二个数"];
        return;
    }

     int res = [self.firT.text intValue] + [self.secT.text intValue];
    self.resultL.text = [NSString stringWithFormat:@"%d",res];
    
}
-(void)alert:(NSString *)info
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"输入有误" message:info delegate:nil cancelButtonTitle:@"我知道" otherButtonTitles:nil, nil];
    [alert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
