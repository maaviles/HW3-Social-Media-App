//
//  AddPostViewController.m
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/24/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import "AddPostViewController.h"

@interface AddPostViewController ()

@end

@implementation AddPostViewController

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
	// Do any additional setup after loading the view.
    
    self.userNameInfo.delegate = self;
    self.titleInfo.delegate = self;
    self.contentInfo.delegate = self;
    
    
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

//-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range
//replacementText:(NSString *)text {
//    if ([text isEqualToString:@"\n"]) {
//        [textView resignFirstResponder];
//    }
//    return YES;
//}

- (IBAction)submitPostButton:(id)sender {
    
    if ([self.userNameInfo.text isEqualToString:@""]) {
        self.userNameInfo.text = @"MacyistheShit";
    }
    
    if ([self.titleInfo.text isEqualToString:@""]) {
        self.titleInfo.text = @"Why Macy Should Stop Doing HW";
    }
    
    if ([self.contentInfo.text isEqualToString:@""]) {
        self.contentInfo.text = @"Macy is missing the Seahawks game for coding! Which isn't bad actually! Good sign that I'm not grumpy! Hahaha";
    }
    
    [self.delegate addItemViewUserName:self.userNameInfo.text
                           andTitle:self.titleInfo.text
                         andContent:self.contentInfo.text
                       andTimeStamp:[[NSDate alloc] init]
                            atIndex:0];
    
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}
//
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    [self.userNameInfo resignFirstResponder];
//    [self.titleInfo resignFirstResponder];
//    [self.contentInfo resignFirstResponder];
//}
@end
