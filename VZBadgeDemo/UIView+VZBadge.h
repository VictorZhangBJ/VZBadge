//
//  UIView+VZBadge.h
//  VZBadgeDemo
//
//  Created by mini4s215 on 11/2/15.
//  Copyright © 2015 mini4s215. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BadgeView.h"

@interface UIView (VZBadge)

@property (nonatomic, strong) UIColor *badgeColor;
@property (nonatomic, strong) UIColor *badgeBackgroundColor;
@property (nonatomic, strong) UIColor *badgeTextColor;
@property (nonatomic, strong) NSString *badgeText;
@property (nonatomic, assign) CGSize badgeSize;
@property (nonatomic, assign) CGPoint badgeOffset;

-(void)showBadge;

-(void)clearBadge;
@end
