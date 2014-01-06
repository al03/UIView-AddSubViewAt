//
//  UIView+AddSubViewAt.h
//  
//
//  Created by Albert on 8/30/12.
//  Copyright (c) 2012 Albert. All rights reserved.
//  maokaiyin@gmail.com

#import <UIKit/UIKit.h>

#define IS_IPHONE_5 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )
#define IS_NOT_IOS7LATER [[[UIDevice currentDevice] systemVersion] intValue] < 7
//#define IS_IPHONE_5 ( [ [ UIScreen mainScreen ] bounds ].size.height == 568 )

float KYViewHeightStautNavBar();   //有状态栏和导航栏时view的高度
float KYViewHeightStautbar();        //
CGRect KYViewFrameStautbar();       
CGRect KYViewFrameStaurNavNar();

@interface   UIView (UIView_AddSubViewAt)
-(void)addSubview:(UIView *)view atX:(CGFloat)x;
-(void)addSubview:(UIView *)view atY:(CGFloat)y;
-(void)addSubview:(UIView *)view atPoint:(CGPoint)point;
-(void)addSubviewAtBottom:(UIView *)view padding:(CGFloat)padding;  //在底部添加view，并扩展self高度
-(void)addSubviewAtBottom:(UIView *)view;                                          //在底部添加视图

-(void)setPosition:(CGPoint)po;
@end


