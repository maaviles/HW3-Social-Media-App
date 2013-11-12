//
//  TextFieldCell.h
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/23/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CellTextFieldWidth 90.0
#define MarginBetweenControls 20.0

@interface TextFieldCell : UITableViewController {

    UITextField *textField;
    
}

@property (nonatomic, retain) UITextField *textField;

@end
