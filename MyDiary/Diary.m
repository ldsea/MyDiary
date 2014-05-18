//
//  Diary.m
//  MyDiary
//
//  Created by 梁栋 on 14-4-6.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import "Diary.h"

@implementation Diary

//-(id)init{
//    return [self initWithTitle:@"" content:@""];
//}


/*测试同步*/

+ (id)createDiary
{
    Diary *newDiary = [[Diary alloc]init];
    newDiary.title = @"";
    newDiary.content = @"";
//    newDiary.dateCreate = [[NSDate alloc]init];
    return newDiary;
}

- (id)initWithTitle:(NSString *)theTitle content:(NSString *)theContent
{
    self = [self init];
    
    if(self){
        [self setTitle:theTitle];
        [self setContent:theContent];
        _dateCreate = [[NSDate alloc]init];
    }
    
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    //对于每一个实例变量，基于它的变量名进行归档
    //并且这些对象也会被用于发送encodeWithCoder:消息
    [aCoder encodeObject:self.title forKey:@"title"];
        [aCoder encodeObject:self.content forKey:@"content"];
        [aCoder encodeObject:self.dateCreate forKey:@"dateCreate"];
       // [aCoder encodeObject:self. forKey:@"title"];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self){
        [self setTitle:[aDecoder decodeObjectForKey:@"title"]];
        [self setContent:[aDecoder decodeObjectForKey:@"content"]];
        
        _dateCreate = [aDecoder decodeObjectForKey:@"dateCreate"];
    }
    
    return self;
}

@end
