//
//  KJAutoLayoutUsePriorityDemoVC.m
//  KJAutoLayoutSkillDemo
//
//  Created by mm on 17/4/24.
//  Copyright © 2017年 mm. All rights reserved.
//

#import "KJAutoLayoutUsePriorityDemoVC.h"

@interface KJAutoLayoutUsePriorityDemoVC ()
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *view3ToView1Constraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *view3ToView2Constraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *greenViewWidthConstraint;

@end

@implementation KJAutoLayoutUsePriorityDemoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)closeGreenAction:(id)sender {
    self.view3ToView1Constraint.priority = 999;
    self.view3ToView2Constraint.priority = 998;
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)closeBrownAction:(id)sender {
    self.view3ToView1Constraint.priority = 998;
    self.view3ToView2Constraint.priority = 999;
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)removeBrownAction:(id)sender {
    [self.view2 removeFromSuperview];
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)greenGetBiggerAction:(id)sender {
    self.greenViewWidthConstraint.constant = self.greenViewWidthConstraint.constant + 10;
}

@end
