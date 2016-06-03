//
//  DSRoxSDKObserver.m
//  DevStarterProject
//
//  Created by Cole Richards on 6/3/16.
//  Copyright © 2016 ROXIMITY. All rights reserved.
//

#import "DSRoxSDKObserver.h"

@implementation DSRoxSDKObserver


-(instancetype)init{
    if (self = [super init]){
        [ROXIMITYEngine setDeviceHookDelegate:self];
    }
    return self;
}

-(void)didReceiveROXIMITYEvent:(ROXEventInfo *)event{
    NSLog(@"%@",event);
}

@end
