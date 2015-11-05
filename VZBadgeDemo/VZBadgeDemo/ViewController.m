//
//  ViewController.m
//  VZBadgeDemo
//
//  Created by mini4s215 on 11/2/15.
//  Copyright © 2015 mini4s215. All rights reserved.
//

#import "ViewController.h"
#import "VZBadgeView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, strong) VZBadgeView *badgeView;
@property (nonatomic, strong) VZBadgeView *EllipseView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.badgeView = [VZBadgeView new];
    self.badgeView.badgeStyle = BadgeStyleNumber;
    self.badgeView.badgeColor = [UIColor redColor];
    self.badgeView.badgeSize = CGSizeMake(15, 15);
    self.badgeView.badgeOffset = CGPointMake(72, 2);
    [self.label addSubview:self.badgeView];
    self.badgeView.badgeText = @"9";
    
    self.EllipseView = [VZBadgeView new];
    self.EllipseView.badgeStyle = BadgeStyleNumber;
    self.EllipseView.badgeColor = [UIColor redColor];
    self.EllipseView.badgeSize = CGSizeMake(15, 15);
    self.EllipseView.badgeOffset = CGPointMake(100, 2);
    self.EllipseView.badgeText = @"12";
    [self.label addSubview:self.EllipseView];
    
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)changeLayout:(id)sender {
    NSLog(@"改变布局");
    [self.badgeView setBadgeStyle:BadgeStyleNumber];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
