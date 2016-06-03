//
//  ViewController.m
//  DevStarterProject
//
//  Created by Cole Richards on 6/3/16.
//  Copyright © 2016 ROXIMITY. All rights reserved.
//

#import "ViewController.h"
#import "DSRoxSDKObserver.h"

@interface ViewController ()

@property (nonatomic, retain) DSRoxSDKObserver *sdkObserver;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sdkObserver = [[DSRoxSDKObserver alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
