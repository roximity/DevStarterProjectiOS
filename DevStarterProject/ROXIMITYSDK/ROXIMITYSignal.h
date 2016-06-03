//
//  ROXIMITYSignal.h
//  ROXIMITYlib
//
//  Created by Cole Richards on 4/25/16.
//  Copyright © 2016 ROXIMITY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ROXSignalOriginType.h"

@interface ROXIMITYSignal : NSObject

-(instancetype) initWithDictionary:(NSDictionary *)builderDict;

-(NSString *)getSignalName;
-(NSString *)getSignalId;
-(NSSet *)getSignalTags;
-(ROXSignalOriginType) getSignalType;

@end
