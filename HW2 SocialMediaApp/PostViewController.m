//
//  PostViewController.m
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/23/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import "PostViewController.h"
#import "Post.h"
#import "PostCell.h"
#import "AddPostViewController.h"
#import "EditPostViewController.h"


@interface PostViewController () <AddItemViewControllerDelegate, CellIndexDelegate>

@end

@implementation PostViewController

@synthesize posts;

- (void)dealloc {
    
    [super dealloc];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    
    self.posts = [NSMutableArray arrayWithCapacity:10];
    
    Post *post = [[Post alloc] init];
    post.userName = @"Username 1";
    post.title = @"Title 1";
    post.content = @"Content 1";
    post.timeStamp = [NSDate date];
    [self.posts addObject:post];
    
    Post *post2 = [[Post alloc] init];
    post2.userName = @"Username 2";
    post2.title = @"Title 2";
    post2.content = @"Content 2";
    post2.timeStamp = [NSDate date];
    [self.posts addObject:post2];
    
    Post *post3 = [[Post alloc] init];
    post3.userName = @"Username 3";
    post3.title = @"Title 3";
    post3.content = @"Content 3";
    post3.timeStamp = [NSDate date];
    [self.posts addObject:post3];

    Post *post4 = [[Post alloc] init];
    post4.userName = @"Username 4";
    post4.title = @"Title 4";
    post4.content = @"Content 4";
    post4.timeStamp = [NSDate date];
    [self.posts addObject:post4];

    Post *post5 = [[Post alloc] init];
    post5.userName = @"Username 5";
    post5.title = @"Title 5";
    post5.content = @"Content 5";
    post5.timeStamp = [NSDate date];
    [self.posts addObject:post5];

    Post *post6 = [[Post alloc] init];
    post6.userName = @"Username 6";
    post6.title = @"Title 6";
    post6.content = @"Content 6";
    post6.timeStamp = [NSDate date];
    [self.posts addObject:post6];

    Post *post7 = [[Post alloc] init];
    post7.userName = @"Username 7";
    post7.title = @"Title 7";
    post7.content = @"Content 7";
    post7.timeStamp = [NSDate date];
    [self.posts addObject:post7];

    Post *post8 = [[Post alloc] init];
    post8.userName = @"Username 8";
    post8.title = @"Title 8";
    post8.content = @"Content 8";
    post8.timeStamp = [NSDate date];
    [self.posts addObject:post8];

    Post *post9 = [[Post alloc] init];
    post9.userName = @"Username 9";
    post9.title = @"Title 9";
    post9.content = @"Content 9";
    post9.timeStamp = [NSDate date];
    [self.posts addObject:post9];

    Post *post10 = [[Post alloc] init];
    post10.userName = @"Username 10";
    post10.title = @"Title 10";
    post10.content = @"Content 10";
    post10.timeStamp = [NSDate date];
    [self.posts addObject:post10];
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // *** Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // *** Return the number of rows in the section.
    return [self.posts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // ***
    static NSString *CellIdentifier = @"PostCell";
    
    // *** Confused with which way to display
    
    PostCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[PostCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //cell.userNameLabel.text = [NSString stringWithFormat:@"Username %d", indexPath.row];
    //cell.titleLabel.text = [NSString stringWithFormat:@"title %d", indexPath.row];
    //cell.contentLabel.text = [NSString stringWithFormat:@"content %d", indexPath.row];
    
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
    [dateFormater setDateFormat:@"MM/dd/yy hh:mm a"];
    NSString *dateString = [dateFormater stringFromDate:[self.posts[indexPath.row] timeStamp]];
    cell.timeStampLabel.text = dateString;

    
    Post *post = (self.posts)[indexPath.row];
    
    cell.userNameLabel.text = post.userName;
    cell.titleLabel.text = post.title;
    cell.contentLabel.text = post.content;
    
    
    // Configure the cell...
    
    

    return cell;

}
- (void)CellIndex:(NSInteger)cellIndex {
    
}
#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}


- (BOOL)TabbleView:(UITableView *)tableview canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [self.posts removeObjectAtIndex:indexPath.row];
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert)
    {
        
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"editPostSeg"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        EditPostViewController *editPVC = [segue destinationViewController];
        editPVC.post = self.posts[indexPath.row];
        editPVC.cellIndex = indexPath.row;
        editPVC.delegate = self;
    } else if ([segue.identifier isEqualToString:@"addPostSeg"]) {
        AddPostViewController *addPVC = [segue destinationViewController];
        addPVC.delegate = self;
    }
}

- (void)submitPostButtonPressed {
    Post *newPost = [[Post alloc] initWithName:@"" andTitle:@"" andContent:@""];
    [self.posts insertObject:newPost atIndex:0];
    [self performSegueWithIdentifier:@"addPostSeg" sender:self];
}

-(void)addItemViewUserName:(NSString *)userName andTitle:(NSString *)title
                andContent:(NSString *)content andTimeStamp:(NSDate *)timeStamp
                   atIndex:(NSInteger)cellIndex
{
    Post *tempPost = self.posts[cellIndex];
    tempPost.userName = userName;
    tempPost.title = title;
    tempPost.content = content;
    tempPost.timeStamp = timeStamp;
    [self.tableView reloadData];
}

@end






