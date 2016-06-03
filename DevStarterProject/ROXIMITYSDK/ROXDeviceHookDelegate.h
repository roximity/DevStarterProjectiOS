//
//  ROXDeviceHookDelegate.h
//  ROXIMITYlib
//
//  Created by dp on 4/9/14.
//  Copyright (c) 2015 ROXIMITY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ROXEventInfo.h"

@protocol ROXDeviceHookDelegate <NSObject>

@required
- (void) didReceiveROXIMITYEvent:(ROXEventInfo *)event;
@end
