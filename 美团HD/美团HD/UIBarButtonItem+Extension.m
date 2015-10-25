//
//  UIBarButtonItem+Extension.m
//  美团HD
//
//  Created by kumaBro on 15/10/26.
//  Copyright © 2015年 kumaBro. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
#import "UIView+Extension.h"

@implementation UIBarButtonItem (Extension)
/**
 *  创建一个item
 *
 *  @param taget          点击item后调用哪个对象的方法
 *  @param action         点击item后调用taget的哪个方法
 *  @param image          图片
 *  @param highlightImage 高亮图片
 *
 *  @return 创建完的item
 */
+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highlightImage:(NSString *)highlightImage
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    //设置图片
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highlightImage]forState:UIControlStateHighlighted];
    
    //设置尺寸
    btn.size = btn.currentImage.size;
    
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}
@end
