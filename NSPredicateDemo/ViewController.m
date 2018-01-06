//
//  ViewController.m
//  NSPredicateDemo
//
//  Created by lx on 2018/1/6.
//  Copyright © 2018年 lx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //验证用户名（只能是字母组成且为6～12位）
    NSString *userName = @"UserCoco";
    NSString *nameRegex = @"^[A-Za-z]{6,12}$";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nameRegex];
    if (![test evaluateWithObject:userName]) {
        NSLog(@"账号只能由6～12位字母组成");
        return;
    }
    
    
    //验证昵称(只能是汉字，字母或二者组合，最少2位)
    NSString *nickName = @"哈哈";
    NSString *nickRegex = @"^[a-zA-Z\u4e00-\u9fa5]{2,4}$";
    NSPredicate *test2 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nickRegex];
    if (![test2 evaluateWithObject:nickName]) {
        NSLog(@"昵称为2～4位汉字或字母组合");
        return;
    }
    
    
    //验证密码（只能是数字且为6位）
    NSString *passwd = @"8798881";
    NSString *secretRegex = @"^\\d{6}$";
    NSPredicate *test3 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",secretRegex];
    if (![test3 evaluateWithObject:passwd]) {
        NSLog(@"密码只能是数字且为6位");
        return;
    }
    
    
    //检验11位手机号码
    NSString *telNo = @"13899008766";
    NSString *regex=@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate *test4 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if(![test4 evaluateWithObject:telNo]){
        NSLog(@"手机号不合法");
        return;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
