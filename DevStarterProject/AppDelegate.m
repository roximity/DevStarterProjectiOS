//
//  AppDelegate.m
//  DevStarterProject
//
//  Created by Cole Richards on 6/3/16.
//  Copyright © 2016 ROXIMITY. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSDictionary * roximityEngineOptions = @{
                                             kROXEngineOptionsUserTargetingLimited : @(NO),
                                             kROXEngineOptionsMuteBluetoothOffAlert: @(NO),
                                             kROXEngineOptionsMuteLocationPermissionAlert : @(NO),
                                             kROXEngineOptionsMuteNotificationPermissionAlert: @(NO),
                                             kROXEngineOptionsMuteRequestAlerts: @(NO),
                                             kROXEngineOptionsReservedRegions: [NSNumber numberWithInt:0],
                                             kROXEngineOptionsStartLocationDeactivated: @(NO)
                                             };
    
    [ROXIMITYEngine startWithLaunchOptions:launchOptions engineOptions:roximityEngineOptions applicationId:@"<YOUR APPLICATION ID HERE>" andEngineDelegate:self];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    [ROXIMITYEngine resignActive];
    
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [ROXIMITYEngine background];

    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [ROXIMITYEngine foreground];
    
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [ROXIMITYEngine active];
    
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [ROXIMITYEngine terminate];
    
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
