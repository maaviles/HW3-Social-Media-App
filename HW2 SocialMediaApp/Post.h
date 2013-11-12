//
//  Post.h
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/23/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject <NSCoding>

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, retain) NSDate *timeStamp;
@property (nonatomic, strong) UIColor *randomColor;

-(Post *)initWithName:(NSString *)userName andTitle:(NSString *)
            title andContent:(NSString *)content;



@end
