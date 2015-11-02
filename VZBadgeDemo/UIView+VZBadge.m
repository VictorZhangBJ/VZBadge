//
//  UIView+VZBadge.m
//  VZBadgeDemo
//
//  Created by mini4s215 on 11/2/15.
//  Copyright © 2015 mini4s215. All rights reserved.
//

#import "UIView+VZBadge.h"
#import <objc/runtime.h>

static char kBadgeColor;
static char kBadgeBackgroundColor;
static char kBadgeTextColor;
static char kBadgeText;
static char kBadgeSize;
static char kBadgeOffset;

@implementation UIView (VZBadge)

-(void)setBadgeColor:(UIColor *)badgeColor
{
    objc_setAssociatedObject(badgeColor, &kBadgeColor, badgeColor, OBJC_ASSOCIATION_RETAIN);
    
}

-(UIColor *)badgeColor
{
    return objc_getAssociatedObject(self, &kBadgeColor);
}



@end
