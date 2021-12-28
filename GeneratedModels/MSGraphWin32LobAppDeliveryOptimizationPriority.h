// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWin32LobAppDeliveryOptimizationPriorityValue){

	MSGraphWin32LobAppDeliveryOptimizationPriorityNotConfigured = 0,
	MSGraphWin32LobAppDeliveryOptimizationPriorityForeground = 1,
    MSGraphWin32LobAppDeliveryOptimizationPriorityEndOfEnum
};

@interface MSGraphWin32LobAppDeliveryOptimizationPriority : NSObject

+(MSGraphWin32LobAppDeliveryOptimizationPriority*) notConfigured;
+(MSGraphWin32LobAppDeliveryOptimizationPriority*) foreground;

+(MSGraphWin32LobAppDeliveryOptimizationPriority*) UnknownEnumValue;

+(MSGraphWin32LobAppDeliveryOptimizationPriority*) win32LobAppDeliveryOptimizationPriorityWithEnumValue:(MSGraphWin32LobAppDeliveryOptimizationPriorityValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWin32LobAppDeliveryOptimizationPriorityValue enumValue;

@end


@interface NSString (MSGraphWin32LobAppDeliveryOptimizationPriority)

- (MSGraphWin32LobAppDeliveryOptimizationPriority*) toMSGraphWin32LobAppDeliveryOptimizationPriority;

@end
