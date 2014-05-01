//
//  CreateDiaryViewController.h
//  MyDiary
//
//  Created by 梁栋 on 14-4-20.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diary.h"

//实现协议
@class CreateDiaryViewController;
@protocol CreateDiaryViewControllerDelegate
@required
//用户点击按钮时实现的方法
- (void)createDiaryViewControllerDidCancel:(CreateDiaryViewController *)createDiaryController;
//当用户点击保存按钮时实现的方法
-(void)createDiaryViewController:(CreateDiaryViewController *)createDiaryController didSaveWithDiary:(Diary *)theDiary;

@end

@interface CreateDiaryViewController : UIViewController

@property (weak,nonatomic) id <CreateDiaryViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *diayDate;
@property (weak, nonatomic) IBOutlet UITextField *diaryTitle;
@property (weak, nonatomic) IBOutlet UITextView *diaryContent;
- (IBAction)cancel:(id)sender;
- (IBAction)saveDiary:(id)sender;

@end
