//
//  LocationViewController.h
//  MyDiary
//
//  Created by 梁栋 on 14-4-6.
//  Copyright (c) 2014年 梁栋. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationViewController : UIViewController <CLLocationManagerDelegate>

@property (nonatomic,strong) CLLocationManager *locationManager;

@end
