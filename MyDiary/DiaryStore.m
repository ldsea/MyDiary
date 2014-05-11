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

-(id)init
{
    if(defaultStore)
        return defaultStore;
    self = [super init];
    
    if(self){
        diaries = [[NSMutableArray alloc]init];
    }
    
    return  self;
}

@end
