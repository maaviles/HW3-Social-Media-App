//
//  AddPostViewController.h
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/24/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"
#import "AddItemViewControllerDelegate.h"

@class AddPostViewController;

@protocol AddItemViewControllerDelegate;


@interface AddPostViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) id<AddItemViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *userNameInfo;
@property (strong, nonatomic) IBOutlet UITextField *titleInfo;
@property (strong, nonatomic) IBOutlet UITextField *contentInfo;
@property (strong, nonatomic) IBOutlet UIButton *addPostButton;


- (IBAction)submitPostButton:(id)sender;


@end
