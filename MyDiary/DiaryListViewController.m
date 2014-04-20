//
//  DiaryListViewController.m
//  MyDiary
//
//  Created by 梁栋 on 14-4-6.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import "DiaryListViewController.h"
#import "DetailDiaryViewController.h"
#import "Diary.h"

@interface DiaryListViewController ()

@end

@implementation DiaryListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
     _diaries = [[NSMutableArray alloc]init];
    
    for (int i=0; i<10; i++) {
        Diary *diary  = [[Diary alloc]initWithTitle:[NSString stringWithFormat:@"日志%d",i] content:[NSString stringWithFormat:@"第%d日志的内容是《%d》",i,i]];
        
       
        
        [_diaries addObject:diary];
    }
//    //创建一个新的bar button item,用户点击按钮的时候会调用addNewDiary
//    UIBarButtonItem *bbi = [[UIBarButtonItem alloc]
//                            initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNewDiary:)];
//    
//    [[self navigationItem] setRightBarButtonItem:bbi];
    
    [[self navigationItem]setLeftBarButtonItem:[self editButtonItem]];
    
//    [[self navigationItem] setTitle:@"日记列表"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.diaries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DiaryCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Diary *diary = [self.diaries objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [diary title];
    
    cell.detailTextLabel.text = [[diary dateCreate] description];
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"准备开始场景切换");
    
    NSString *str = segue.identifier;
    //获取选择的行
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    int row = [indexPath row];
    
    //获取数组中选中行的Diary对象
    Diary *diary = [self.diaries objectAtIndex:row];
    
    //通过segue获取被故事板初始化的对象，然后将数据传递给它
    DetailDiaryViewController *detailDiaryViewController =
    (DetailDiaryViewController *)[segue destinationViewController];
    detailDiaryViewController.diary = diary;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"选择了%d行",indexPath.row);
}


//- (void)addNewDiary:(id)sender
//{
//    
//}

@end
