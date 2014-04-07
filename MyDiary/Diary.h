//
//  Diary.h
//  MyDiary
//
//  Created by 梁栋 on 14-4-6.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Diary : NSObject

+ (id)createDiary;

- (id)initWithTitle:(NSString *)theTitle content:(NSString *)theContent;

@property (nonatomic,retain) NSString *title;

@property (nonatomic,retain) NSString *content;

@property (nonatomic,readonly,getter = dateCreate) NSDate *dateCreate;

@end
