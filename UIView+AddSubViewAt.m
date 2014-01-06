//
//  UIView+AddSubViewAt.m
//  
//
//  Created by Albert on 8/30/12.
//  Copyright (c) 2012 Albert. All rights reserved.
//

#import "UIView+AddSubViewAt.h"

//去除状态栏和导航栏的高度
float KYViewHeightStautNavBar()
{
    if (IS_IPHONE_5) {
        return 504.0f;
    }else
        return 416.0f;
}

float KYViewHeightStautbar()
{
    if (IS_IPHONE_5) {
        return 548.0f;
    }else
        return 460.0f;
}


CGRect KYViewFrameStautbar()
{
    return CGRectMake(0, 0, 320.0f, KYViewHeightStautbar());
}
CGRect KYViewFrameStaurNavNar()
{
    return CGRectMake(0, 0, 320.0f, KYViewHeightStautNavBar());
}


@implementation UIView (UIView_AddSubViewAt)

-(void)addSubview:(UIView *)view atY:(CGFloat)y
{
    [self addSubview:view atPoint:CGPointMake(0, y)];
}

-(void)addSubview:(UIView *)view atX:(CGFloat)x
{
     [self addSubview:view atPoint:CGPointMake(x, 0)];
}

-(void)addSubviewAtBottom:(UIView *)view padding:(CGFloat)padding
{
    CGSize size = self.frame.size;
    CGSize sizeNew = CGSizeMake(size.width, size.height+view.frame.size.height+padding);
    CGRect frame = self.frame;
    
    [self setFrame:CGRectMake(frame.origin.x, frame.origin.y, sizeNew.width, sizeNew.height)];
    
    CGPoint center=CGPointMake([self inerCenter].x, [self inerCenter].y-view.frame.size.height-padding);
    view.center=center;
    
    [self addSubview:view];
}

-(CGPoint)inerCenter
{
    return CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
}

-(void)addSubview:(UIView *)view atPoint:(CGPoint)point
{
    CGSize size=view.frame.size;
    view.frame=CGRectMake(point.x, point.y, size.width, size.height);
    [self addSubview:view];
}

-(void)addSubviewAtBottom:(UIView *)view
{
    [self addSubview:view atY:self.frame.size.height - view.frame.size.height];
}

-(void)setPosition:(CGPoint)po
{
    self.frame = CGRectMake(po.x, po.y, self.frame.size.width, self.frame.size.height);
}

@end
