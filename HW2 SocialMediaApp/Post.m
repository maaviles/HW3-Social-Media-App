//
//  Post.m
//  HW2 SocialMediaApp
//
//  Created by Macy Aviles on 10/23/13.
//  Copyright (c) 2013 Macy Aviles. All rights reserved.
//

#import "Post.h"
#import "BgrColor.h"


@implementation Post

-(Post *)initWithName:(NSString *)userName andTitle:(NSString *)title andContent:(NSString *)content {
    self.userName = userName;
    self.title = title;
    self.content = content;
    self.timeStamp = [[NSDate alloc] init];
    self.randomColor = [UIColor lightenColor];
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (!self) {
        return nil;
    }
    self.userName = [aDecoder decodeObjectForKey:@"userName"];
    self.title = [aDecoder decodeObjectForKey:@"title"];
    self.content = [aDecoder decodeObjectForKey:@"content"];
    self.timeStamp = [aDecoder decodeObjectForKey:@"timeStamp"];
    self.randomColor = [aDecoder decodeObjectForKey:@"randomColor"];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.userName forKey:@"userName"];
    [aCoder encodeObject:self.title forKey:@"title"];
    [aCoder encodeObject:self.content forKey:@"content"];
    [aCoder encodeObject:self.timeStamp forKey:@"timeStamp"];
    [aCoder encodeObject:self.randomColor forKey:@"randomColor"];
}

+(NSString *)getPathToArchive {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *docsDir = [paths objectAtIndex:0];
    return [docsDir stringByAppendingPathComponent:@"post.txt"];
}

+(void)savePost:(Post *)aPost {
    [NSKeyedArchiver archiveRootObject:aPost toFile:[Post getPathToArchive]];
}

+(Post *)getPost {
    return [NSKeyedUnarchiver unarchiveObjectWithFile:[Post getPathToArchive]];
}
@end
