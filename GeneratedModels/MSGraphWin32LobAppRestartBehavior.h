// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWin32LobAppRestartBehaviorValue){

	MSGraphWin32LobAppRestartBehaviorBasedOnReturnCode = 0,
	MSGraphWin32LobAppRestartBehaviorAllow = 1,
	MSGraphWin32LobAppRestartBehaviorSuppress = 2,
	MSGraphWin32LobAppRestartBehaviorForce = 3,
    MSGraphWin32LobAppRestartBehaviorEndOfEnum
};

@interface MSGraphWin32LobAppRestartBehavior : NSObject

+(MSGraphWin32LobAppRestartBehavior*) basedOnReturnCode;
+(MSGraphWin32LobAppRestartBehavior*) allow;
+(MSGraphWin32LobAppRestartBehavior*) suppress;
+(MSGraphWin32LobAppRestartBehavior*) force;

+(MSGraphWin32LobAppRestartBehavior*) UnknownEnumValue;

+(MSGraphWin32LobAppRestartBehavior*) win32LobAppRestartBehaviorWithEnumValue:(MSGraphWin32LobAppRestartBehaviorValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWin32LobAppRestartBehaviorValue enumValue;

@end


@interface NSString (MSGraphWin32LobAppRestartBehavior)

- (MSGraphWin32LobAppRestartBehavior*) toMSGraphWin32LobAppRestartBehavior;

@end
