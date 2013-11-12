//
//  Header.h
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/28/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AddItemViewControllerDelegate <NSObject>

-(void)addItemViewUserName:(NSString *)userName andTitle:(NSString *)title
             andContent:(NSString *)content andTimeStamp:(NSDate *)timeStamp
                atIndex:(NSInteger)cellIndex;

@end