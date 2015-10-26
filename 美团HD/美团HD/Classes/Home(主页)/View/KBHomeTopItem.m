//
//  KBHomeTopItem.m
//  美团HD
//
//  Created by kumaBro on 15/10/26.
//  Copyright © 2015年 kumaBro. All rights reserved.
//

#import "KBHomeTopItem.h"

@interface KBHomeTopItem()
@property (weak, nonatomic) IBOutlet UIButton *iconButton;

@end

@implementation KBHomeTopItem


+ (instancetype)item
{
    return [[[NSBundle mainBundle] loadNibNamed:@"KBHomeTopItem" owner:nil options:nil] firstObject];
}

- (void)addTarget:(id)target action:(SEL)action
{
    [self.iconButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}
@end
