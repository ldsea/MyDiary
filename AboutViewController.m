//
//  ViewController.m
//  MyDiary
//
//  Created by 梁栋 on 14-3-30.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    switch (self.authors.selectedSegmentIndex) {
        case 0:
            self.weiBo.text=@"@海蓝";
            self.authorImage.image = [UIImage imageNamed:@"a.jpg"];
            break;
        case 1:
            self.weiBo.text=@"@欢乐谷女王";
            self.authorImage.image = [UIImage imageNamed:@"b.jpg"];
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)authorChanged:(id)sender{
    //    NSLog(@"执行了authorChanged方法");
    int value = [(UISegmentedControl *)sender selectedSegmentIndex];
    
    switch (value) {
        case 0:
            self.weiBo.text=@"@海蓝";
            self.authorImage.image = [UIImage imageNamed:@"a.jpg"];
            break;
        case 1:
            self.weiBo.text=@"欢乐谷女王";
            self.authorImage.image = [UIImage imageNamed:@"b.jpg"];
            break;
            
        default:
            break;
    }
    
}

@end
