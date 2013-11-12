//
//  BgrColor.m
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/30/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import "BgrColor.h"
#import "Post.h"
#define LIGHTEN(x) (x * 0.66) + 0.33


@implementation BgrColor

+ (UIColor *)randomColor
{
    return [UIColor colorWithRed:arc4random() % 256/256.0 green:arc4random() % 256/256.0 blue:arc4random() % 256/256.0 alpha:1];
}

+ (UIColor *)lightenColor:(UIColor *)color
{
    CGFloat red, green, blue, alpha;
    [color getRed:&red green:&green blue:&blue alpha:&alpha];
    
    return [UIColor colorWithRed:LIGHTEN(red) green:LIGHTEN(green) blue:LIGHTEN(blue) alpha:1];
}

@end
