//
//  ViewController.m
//  WSNumBezier
//
//  Created by TYRBL on 15/8/12.
//  Copyright (c) 2015年 Senro Wong. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+BezierAnimation.h"

@interface ViewController ()

@property (nonatomic,strong)  UILabel *aLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.aLabel = [UILabel ws_animationLabelWithFrame:CGRectMake(50, 100, CGRectGetWidth(self.view.frame) - 100, 40)];
    self.aLabel.backgroundColor = [UIColor orangeColor];
    self.aLabel.textColor = [UIColor blackColor];
    [self.view addSubview:self.aLabel];
    
    UIButton *aButton = [UIButton buttonWithType:UIButtonTypeCustom];
    aButton.backgroundColor = [UIColor orangeColor];
    aButton.frame =CGRectMake(50, 200 , CGRectGetWidth(self.view.frame) - 100, 40);
    [aButton setTitle:@"开始" forState:UIControlStateNormal];
    
    [aButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [aButton addTarget:self action:@selector(aBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aButton];
}

- (void)aBtnAction:(UIButton *)sender{
    
    
    [self.aLabel animationFromnum:0 toNum:5698 duration:3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
