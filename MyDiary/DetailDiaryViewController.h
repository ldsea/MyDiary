//
//  DetailDiaryViewController.h
//  MyDiary
//
//  Created by 梁栋 on 14-4-7.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diary.h"

@interface DetailDiaryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *diaryTitle;

@property (weak, nonatomic) IBOutlet UITextView *diaryContent;

@property (strong,nonatomic) Diary *diary;

@end
