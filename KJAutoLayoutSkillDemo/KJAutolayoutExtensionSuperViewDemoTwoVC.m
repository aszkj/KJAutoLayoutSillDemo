//
//  KJAutolayoutExtensionSuperViewDemoTwoVC.m
//  KJAutoLayoutSkillDemo
//
//  Created by mm on 17/4/18.
//  Copyright © 2017年 mm. All rights reserved.
//

#import "KJAutolayoutExtensionSuperViewDemoTwoVC.h"

@interface KJAutolayoutExtensionSuperViewDemoTwoVC ()
@property (weak, nonatomic) IBOutlet UILabel *kjLabel1;
@property (weak, nonatomic) IBOutlet UILabel *kjLabel2;


@end

@implementation KJAutolayoutExtensionSuperViewDemoTwoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)shrinkAction:(id)sender {
    NSString *labelText = self.kjLabel1.text;
    if (labelText.length <= 1) {
        return;
    }
    labelText = [labelText substringToIndex:labelText.length-1];
    self.kjLabel1.text = self.kjLabel2.text = labelText;
}

- (IBAction)magnifyAction:(id)sender {
    self.kjLabel1.text = self.kjLabel2.text = [NSString stringWithFormat:@"%@%@",self.kjLabel1.text,@"加"];
}


@end
