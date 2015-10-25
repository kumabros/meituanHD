//
//  UIBarButtonItem+Extension.h
//  美团HD
//
//  Created by kumaBro on 15/10/26.
//  Copyright © 2015年 kumaBro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highlightImage:(NSString *)highlightImage;

@end
