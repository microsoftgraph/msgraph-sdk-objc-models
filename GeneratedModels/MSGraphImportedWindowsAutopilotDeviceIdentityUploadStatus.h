// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusValue){

	MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusNoUpload = 0,
	MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusPending = 1,
	MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusComplete = 2,
	MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusError = 3,
    MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusEndOfEnum
};

@interface MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus : NSObject

+(MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) noUpload;
+(MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) pending;
+(MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) complete;
+(MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) error;

+(MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) UnknownEnumValue;

+(MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) importedWindowsAutopilotDeviceIdentityUploadStatusWithEnumValue:(MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatusValue enumValue;

@end


@interface NSString (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus)

- (MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus*) toMSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus;

@end
