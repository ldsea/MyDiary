//
//  LocationViewController.m
//  MyDiary
//
//  Created by 梁栋 on 14-4-6.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

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
    self.locationManager = [[CLLocationManager alloc]init];
    
    self.locationManager.delegate = self;
    
    [self.locationManager setDistanceFilter:kCLDistanceFilterNone];
    
    [self.locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
//    
    [self.locationManager startUpdatingLocation];
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


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = (CLLocation *)[locations objectAtIndex:0];
    
    NSLog(@"%@",location);
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    NSLog(@"设备定位失败: %@",error);
}

@end
