//
//  BadgeView.h
//  VZBadgeDemo
//
//  Created by mini4s215 on 11/2/15.
//  Copyright © 2015 mini4s215. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, BadgeStyle){
    BadgeStyleDot,
    BadgeStyleNumber,
    BadgeStyleImage
};

@interface VZBadgeView : UIView

@property (nonatomic, strong) UIColor *badgeColor;
@property (nonatomic, strong) UIColor *badgeBackgroundColor;
@property (nonatomic, strong) UIColor *badgeTextColor;
@property (nonatomic, strong) NSString *badgeText;
@property (nonatomic, strong) UIFont *badgeTextFont;
@property (nonatomic, assign) CGSize badgeSize;
@property (nonatomic, assign) CGPoint badgeOffset;
@property (nonatomic, assign) BadgeStyle badgeStyle;

@end
