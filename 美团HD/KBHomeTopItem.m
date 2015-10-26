//
//  KBHomeTopItem.m
//  美团HD
//
//  Created by kumaBro on 15/10/26.
//  Copyright © 2015年 kumaBro. All rights reserved.
//

#import "KBHomeTopItem.h"

@implementation KBHomeTopItem

+ (instancetype)item
{
    return [[[NSBundle mainBundle] loadNibNamed:@"KBHomeTopItem" owner:nil options:nil] firstObject];
}
@end
