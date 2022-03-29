// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphConditionalAccessDevicePlatformValue){

	MSGraphConditionalAccessDevicePlatformAndroid = 0,
	MSGraphConditionalAccessDevicePlatformIOS = 1,
	MSGraphConditionalAccessDevicePlatformWindows = 2,
	MSGraphConditionalAccessDevicePlatformWindowsPhone = 3,
	MSGraphConditionalAccessDevicePlatformMacOS = 4,
	MSGraphConditionalAccessDevicePlatformAll = 5,
	MSGraphConditionalAccessDevicePlatformUnknownFutureValue = 6,
	MSGraphConditionalAccessDevicePlatformLinux = 7,
    MSGraphConditionalAccessDevicePlatformEndOfEnum
};

@interface MSGraphConditionalAccessDevicePlatform : NSObject

+(MSGraphConditionalAccessDevicePlatform*) android;
+(MSGraphConditionalAccessDevicePlatform*) iOS;
+(MSGraphConditionalAccessDevicePlatform*) windows;
+(MSGraphConditionalAccessDevicePlatform*) windowsPhone;
+(MSGraphConditionalAccessDevicePlatform*) macOS;
+(MSGraphConditionalAccessDevicePlatform*) all;
+(MSGraphConditionalAccessDevicePlatform*) unknownFutureValue;
+(MSGraphConditionalAccessDevicePlatform*) linux;

+(MSGraphConditionalAccessDevicePlatform*) UnknownEnumValue;

+(MSGraphConditionalAccessDevicePlatform*) conditionalAccessDevicePlatformWithEnumValue:(MSGraphConditionalAccessDevicePlatformValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphConditionalAccessDevicePlatformValue enumValue;

@end


@interface NSString (MSGraphConditionalAccessDevicePlatform)

- (MSGraphConditionalAccessDevicePlatform*) toMSGraphConditionalAccessDevicePlatform;

@end
