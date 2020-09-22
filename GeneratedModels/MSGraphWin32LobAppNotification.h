// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWin32LobAppNotificationValue){

	MSGraphWin32LobAppNotificationShowAll = 0,
	MSGraphWin32LobAppNotificationShowReboot = 1,
	MSGraphWin32LobAppNotificationHideAll = 2,
    MSGraphWin32LobAppNotificationEndOfEnum
};

@interface MSGraphWin32LobAppNotification : NSObject

+(MSGraphWin32LobAppNotification*) showAll;
+(MSGraphWin32LobAppNotification*) showReboot;
+(MSGraphWin32LobAppNotification*) hideAll;

+(MSGraphWin32LobAppNotification*) UnknownEnumValue;

+(MSGraphWin32LobAppNotification*) win32LobAppNotificationWithEnumValue:(MSGraphWin32LobAppNotificationValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWin32LobAppNotificationValue enumValue;

@end


@interface NSString (MSGraphWin32LobAppNotification)

- (MSGraphWin32LobAppNotification*) toMSGraphWin32LobAppNotification;

@end
