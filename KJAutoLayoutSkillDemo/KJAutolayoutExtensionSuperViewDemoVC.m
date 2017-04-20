//
//  KJAutolayoutExtensionSuperViewDemoVC.m
//  KJAutoLayoutSkillDemo
//
//  Created by mm on 17/4/18.
//  Copyright © 2017年 mm. All rights reserved.
//

#import "KJAutolayoutExtensionSuperViewDemoVC.h"

@interface KJAutolayoutExtensionSuperViewDemoVC ()
@property (weak, nonatomic) IBOutlet UILabel *kjTestLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *kjTestLabelWithMaxConstraint;

@end

@implementation KJAutolayoutExtensionSuperViewDemoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //实际项目中文字的最大宽度可能不是固定的，
    self.kjTestLabelWithMaxConstraint.constant = [UIScreen mainScreen].bounds.size.width - 60;
}
- (IBAction)shrinkAction:(id)sender {
    NSString *labelText = self.kjTestLabel.text;
    if (labelText.length <= 1) {
        return;
    }
    self.kjTestLabel.text = [labelText substringToIndex:labelText.length-1];
    
}

- (IBAction)magnifyAction:(id)sender {
    self.kjTestLabel.text = [NSString stringWithFormat:@"%@%@",self.kjTestLabel.text,@"加"];
}

@end
