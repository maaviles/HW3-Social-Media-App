//
//  PostCell.h
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/23/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddPostViewController.h"

@protocol CellIndexDelegate;

@class Post;

@interface PostCell : UITableViewCell

@property (strong, nonatomic) Post *post;

@property (nonatomic, strong) IBOutlet UILabel *userNameLabel;
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) IBOutlet UILabel *contentLabel;
@property (nonatomic, retain) IBOutlet UILabel *timeStampLabel;
@property (nonatomic, strong) id<CellIndexDelegate> delegate;

@property (strong, nonatomic) NSString *stringFromPostButton;


@end

@protocol CellIndexDelegate <NSObject>
- (void)CellIndex:(NSInteger)cellIndex;

@end
