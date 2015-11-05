//
//  BadgeView.m
//  VZBadgeDemo
//
//  Created by mini4s215 on 11/2/15.
//  Copyright © 2015 mini4s215. All rights reserved.
//

#import "VZBadgeView.h"

@interface VZBadgeView()
{
    CGFloat _offset;
}
@end

@implementation VZBadgeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self){
        [self configureView];
    }
    return self;
}

-(void)configureView
{
    NSLog(@"配置view");
    self.badgeColor = [UIColor redColor];
    self.badgeOffset = CGPointMake(70, 15);
    self.badgeSize = CGSizeMake(7, 7);
    self.badgeTextColor = [UIColor whiteColor];
    self.badgeText = @"8";
    self.badgeTextFont = [UIFont systemFontOfSize:13];
    
    self.backgroundColor = [UIColor clearColor];
    _offset = 4.0;
    
}

-(void)drawRect:(CGRect)rect
{
    NSLog(@"drawRect");
    CGRect circleRect = CGRectMake(rect.origin.x+_offset, rect.origin.y+_offset, rect.size.width-_offset, rect.size.height-_offset);
    CGRect roundedRect = CGRectMake(rect.origin.x, rect.origin.y+_offset, rect.size.width, rect.size.height-_offset*2);

    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    
    if (self.badgeStyle == BadgeStyleNumber) {
        CGContextSaveGState(context);

        //绘制text
        NSLog(@"draw text");
        
        CGSize textSize = [self.badgeText sizeWithAttributes:@{NSFontAttributeName: self.badgeTextFont}];
        CGRect textRect = CGRectInset(rect, (CGRectGetWidth(rect) - textSize.width)/2.0, (CGRectGetHeight(rect) - textSize.height)/2.0);
        [self.badgeText drawInRect:textRect withAttributes:@{NSFontAttributeName: self.badgeTextFont, NSForegroundColorAttributeName: self.badgeTextColor}];
        CGContextRestoreGState(context);
        //绘制圆、椭圆
        CGContextSaveGState(context);
        CGContextSetFillColorWithColor(context, self.badgeColor.CGColor);
        if (self.badgeText.length>=2) {
            //椭圆
            UIBezierPath *roundedRectPath = [UIBezierPath bezierPathWithRoundedRect:roundedRect cornerRadius:5.0];
            [roundedRectPath fill];
        }else{
            //圆
            CGContextFillEllipseInRect(context, circleRect);
        }
        CGContextRestoreGState(context);
        
    }
    
}

-(void)setBadgeOffset:(CGPoint)badgeOffset
{
    _badgeOffset = badgeOffset;
    [self setFrame:CGRectMake(self.badgeOffset.x, self.badgeOffset.y, self.badgeSize.width+_offset, self.badgeSize.height+_offset)];
}

-(void)setBadgeSize:(CGSize)badgeSize
{
    _badgeSize = badgeSize;
    [self setFrame:CGRectMake(self.badgeOffset.x, self.badgeOffset.y, self.badgeSize.width+_offset, self.badgeSize.height+_offset)];

}

-(void)layoutSubviews
{
    NSLog(@"badgeView layoutSubiviews");
}

-(void)setBadgeStyle:(BadgeStyle)badgeStyle
{
    _badgeStyle = badgeStyle;
    [self setNeedsDisplay];
}
-(void)setBadgeText:(NSString *)badgeText
{
    _badgeText = badgeText;
    [self setNeedsDisplay];
}

-(void)setBadgeTextColor:(UIColor *)badgeTextColor
{
    _badgeTextColor = badgeTextColor;
    [self setNeedsDisplay];
}
@end
