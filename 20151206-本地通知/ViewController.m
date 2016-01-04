//
//  ViewController.m
//  20151206-本地通知
//
//  Created by apple2 on 15/12/6.
//  Copyright © 2015年 shiyuwudi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)addLocalNotification:(id)sender;
- (IBAction)removeLocalNotification:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addLocalNotification:(id)sender {
    UILocalNotification *lNotif = [[UILocalNotification alloc]init];
    lNotif.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    lNotif.alertBody = @"alert body";
    lNotif.alertAction = @"view details";
    lNotif.soundName = @"ring";
    lNotif.applicationIconBadgeNumber = 5;
    
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeBadge|UIUserNotificationTypeSound categories:nil];
    UIApplication *app = [UIApplication sharedApplication];
    [app registerUserNotificationSettings:settings];
    [app scheduleLocalNotification:lNotif];
}

- (IBAction)removeLocalNotification:(id)sender {
    [[UIApplication sharedApplication]cancelAllLocalNotifications];
}
@end
