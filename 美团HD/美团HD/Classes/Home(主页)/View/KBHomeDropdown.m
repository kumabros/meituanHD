//
//  KBHomeDropdown.m
//  美团HD
//
//  Created by kumaBro on 15/10/27.
//  Copyright © 2015年 kumaBro. All rights reserved.
//

#import "KBHomeDropdown.h"

@implementation KBHomeDropdown

+ (instancetype) dropdown
{
    return [[[NSBundle mainBundle] loadNibNamed:@"KBHomeDropdown" owner:nil options:nil]firstObject];
}

@end
