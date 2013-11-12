//
//  EditPostViewController.m
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/28/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import "EditPostViewController.h"
#import "Post.h"

@interface EditPostViewController ()

@end

@implementation EditPostViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.userNameText.text = self.post.userName;
    self.titleText.text = self.post.title;
    self.contentText.text = self.post.content;
    self.userNameText.delegate = self;
    self.titleText.delegate = self;
    self.contentText.delegate = self;
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range
replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
    }
    return YES;
}

- (IBAction)doneEditButtonPressed:(id)sender {
    
    [self.delegate addItemViewUserName:self.userNameText.text
                           andTitle:self.titleText.text
                         andContent:self.contentText.text
                       andTimeStamp:[[NSDate alloc] init]
                            atIndex:self.cellIndex];
    
    [self dismissViewControllerAnimated:YES completion:^{
    }];
    
}




@end
