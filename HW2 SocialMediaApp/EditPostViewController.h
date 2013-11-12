//
//  EditPostViewController.h
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/28/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddItemViewControllerDelegate.h"

@protocol AddItemViewControllerDelegate;


@class Post;

@interface EditPostViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) Post *post;

@property NSInteger cellIndex;

@property (strong, nonatomic) IBOutlet UITextField *userNameText;
@property (strong, nonatomic) IBOutlet UITextField *titleText;
@property (strong, nonatomic) IBOutlet UITextField *contentText;
@property (strong, nonatomic) IBOutlet UIButton *doneEditButton;

@property (strong, nonatomic) id<AddItemViewControllerDelegate> delegate;

- (IBAction)doneEditButtonPressed:(id)sender;


@end
