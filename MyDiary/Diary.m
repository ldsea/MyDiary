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

@end
