//
//  DiaryStire.m
//  MyDiary
//
//  Created by 梁栋 on 14-5-11.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import "DiaryStore.h"

static DiaryStore *defaultStore = nil;

@implementation DiaryStore

+(DiaryStore *)defaultStore{
    if(!defaultStore){
        defaultStore = [[super allocWithZone:NULL]init];
    }
    return defaultStore;
}

+(id)allocWithZone:(NSZone *)zone
{
    return [self defaultStore];
}


//-(id)init
//{
//    if(defaultStore)
//        return defaultStore;
//    self = [super init];
//    
//    if(self){
//        diaries = [[NSMutableArray alloc]init];
//    }
//    
//    return  self;
//}

- (NSArray *) diaries;

{
    [self fetchDiary];
    return diaries;
}

- (Diary *)createDiary
{
    [self fetchDiary];
    
    Diary *diary = [Diary createDiary];
    
    [diaries addObject:diary];
    
    return diary;
}

-(NSString *)diaryArchivePath
{
    //获取沙盒中Documents目录的路径列表
    NSArray *documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    
    NSString *documentDirectory = [documentDirectories objectAtIndex:0];
    
    return [documentDirectory stringByAppendingString:@"diaries.data"];
}

-(BOOL)saveChanges
{
    return [NSKeyedArchiver archiveRootObject:diaries toFile:[self diaryArchivePath]];
}

-(void)fetchDiary
{
    if(!diaries){
        NSString *path = [self diaryArchivePath];
        diaries = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    }
    if(!diaries){
        diaries = [[NSMutableArray alloc]init];
    }
}



@end
