//
//  ViewController.h
//  MyDiary
//
//  Created by 梁栋 on 14-3-30.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController

@property (weak,nonatomic) IBOutlet UILabel *weiBo;

@property (weak,nonatomic) IBOutlet UISegmentedControl *authors;

@property (weak,nonatomic) IBOutlet UIImageView *authorImage;

-(IBAction)authorChanged:(id)sender;

@end
