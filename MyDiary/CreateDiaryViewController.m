//
//  CreateDiaryViewController.m
//  MyDiary
//
//  Created by 梁栋 on 14-4-20.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import "CreateDiaryViewController.h"

@interface CreateDiaryViewController ()

@end

@implementation CreateDiaryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"yyyy年M月d日 h:mm:ss"];
    NSString *date = [df stringFromDate:[NSDate date]];
    
    self.diayDate.text = date;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancel:(id)sender {
   // [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate createDiaryViewControllerDidCancel:self];
}

- (IBAction)saveDiary:(id)sender {
    [self.delegate createDiaryViewController:self didSaveWithDiary:nil];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


@end
