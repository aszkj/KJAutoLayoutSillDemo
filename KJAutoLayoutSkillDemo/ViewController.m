//
//  ViewController.m
//  KJAutoLayoutSkillDemo
//
//  Created by mm on 17/4/18.
//  Copyright © 2017年 mm. All rights reserved.
//

#import "ViewController.h"
#import "KJAutolayoutExtensionSuperViewDemoVC.h"
#import "KJAutolayoutExtensionSuperViewDemoTwoVC.h"
#import "KJAutoLayoutScrollViewVC.h"
#import "KJAutoLayoutScrollViewTwoVC.h"
#import "KJAutoLayoutContentCompressionHuggingDemoVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)extensionSuperViewHorizontalAction:(id)sender {
    KJAutolayoutExtensionSuperViewDemoVC *extensionSuperViewDemoVC = [[KJAutolayoutExtensionSuperViewDemoVC alloc] init];
    [self presentViewController:extensionSuperViewDemoVC animated:YES completion:nil];
}

- (IBAction)extendSuperViewVerticalAction:(id)sender {
    KJAutolayoutExtensionSuperViewDemoTwoVC *extensionSuperViewDemoTwoVC = [[KJAutolayoutExtensionSuperViewDemoTwoVC alloc] init];
    [self presentViewController:extensionSuperViewDemoTwoVC animated:YES completion:nil];

}

- (IBAction)scrollViewAutolayoutHorizontalAction:(id)sender {
    KJAutoLayoutScrollViewVC *autoLayoutScrollViewVC = [[KJAutoLayoutScrollViewVC alloc] init];
    [self presentViewController:autoLayoutScrollViewVC animated:YES completion:nil];
}

- (IBAction)scrollViewAutoLayoutVerticalAction:(id)sender {
    KJAutoLayoutScrollViewTwoVC *autoLayoutScrollViewTwoVC = [[KJAutoLayoutScrollViewTwoVC alloc] init];
    [self presentViewController:autoLayoutScrollViewTwoVC animated:YES completion:nil];

}

- (IBAction)contentHugCompressingAction:(id)sender {
    KJAutoLayoutContentCompressionHuggingDemoVC *contentCompressionHuggingDemoVC = [[KJAutoLayoutContentCompressionHuggingDemoVC alloc] init];
    [self presentViewController:contentCompressionHuggingDemoVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
