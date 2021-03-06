//
//  AppDelegate.m
//  YumiMediationSDKDemo
//
//  Created by 甲丁乙_ on 2017/3/30.
//  Copyright © 2017年 Zplay. All rights reserved.
//

#import "AppDelegate.h"
#import <YumiMediationSDK/YumiAdsSplash.h>
#import <CoreLocation/CoreLocation.h>
@import AppCenter;
@import AppCenterAnalytics;
@import AppCenterCrashes;

@interface AppDelegate () <YumiAdsSplashDelegate>

@property (nonatomic, strong) CLLocationManager *location;
@property (nonatomic) YumiAdsSplash *yumiSplash;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.location = [[CLLocationManager alloc] init];
    [self.location requestWhenInUseAuthorization];
    
    [MSAppCenter start:@"cd740b22-da55-4473-bfe9-821e7e5f53ec" withServices:@[
      [MSAnalytics class],
      [MSCrashes class]
    ]];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)yumiAdsSplashDidLoad:(YumiAdsSplash *)splash {
}
- (void)yumiAdsSplash:(YumiAdsSplash *)splash DidFailToLoad:(NSError *)error {
}
- (void)yumiAdsSplashDidClicked:(YumiAdsSplash *)splash {
}
- (void)yumiAdsSplashDidClosed:(YumiAdsSplash *)splash {
}
- (nullable UIImage *)yumiAdsSplashDefaultImage {
    return nil;
}


@end
