//
//  DiaryListViewController.h
//  MyDiary
//
//  Created by 梁栋 on 14-4-6.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DiaryListViewController.h"

#import "Diary.h"

@interface DiaryListViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate    >

@property (nonatomic,strong)NSMutableArray *diaries;

@end
