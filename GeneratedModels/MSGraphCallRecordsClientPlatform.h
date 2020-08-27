// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallRecordsClientPlatformValue){

	MSGraphCallRecordsClientPlatformUnknown = 0,
	MSGraphCallRecordsClientPlatformWindows = 1,
	MSGraphCallRecordsClientPlatformMacOS = 2,
	MSGraphCallRecordsClientPlatformIOS = 3,
	MSGraphCallRecordsClientPlatformAndroid = 4,
	MSGraphCallRecordsClientPlatformWeb = 5,
	MSGraphCallRecordsClientPlatformIpPhone = 6,
	MSGraphCallRecordsClientPlatformRoomSystem = 7,
	MSGraphCallRecordsClientPlatformSurfaceHub = 8,
	MSGraphCallRecordsClientPlatformHoloLens = 9,
	MSGraphCallRecordsClientPlatformUnknownFutureValue = 10,
    MSGraphCallRecordsClientPlatformEndOfEnum
};

@interface MSGraphCallRecordsClientPlatform : NSObject

+(MSGraphCallRecordsClientPlatform*) unknown;
+(MSGraphCallRecordsClientPlatform*) windows;
+(MSGraphCallRecordsClientPlatform*) macOS;
+(MSGraphCallRecordsClientPlatform*) iOS;
+(MSGraphCallRecordsClientPlatform*) android;
+(MSGraphCallRecordsClientPlatform*) web;
+(MSGraphCallRecordsClientPlatform*) ipPhone;
+(MSGraphCallRecordsClientPlatform*) roomSystem;
+(MSGraphCallRecordsClientPlatform*) surfaceHub;
+(MSGraphCallRecordsClientPlatform*) holoLens;
+(MSGraphCallRecordsClientPlatform*) unknownFutureValue;

+(MSGraphCallRecordsClientPlatform*) UnknownEnumValue;

+(MSGraphCallRecordsClientPlatform*) clientPlatformWithEnumValue:(MSGraphCallRecordsClientPlatformValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallRecordsClientPlatformValue enumValue;

@end


@interface NSString (MSGraphCallRecordsClientPlatform)

- (MSGraphCallRecordsClientPlatform*) toMSGraphCallRecordsClientPlatform;

@end
