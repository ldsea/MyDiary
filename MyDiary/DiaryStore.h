//
//  DiaryStire.h
//  MyDiary
//
//  Created by 梁栋 on 14-5-11.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Diary.h"

@interface DiaryStore : NSObject
{
    NSMutableArray *diaries;
}

+(DiaryStore *)defaultStore;

- (NSArray *) diaries;

- (Diary *)createDiary;

- (NSString *)diaryArchivePath;

@end
