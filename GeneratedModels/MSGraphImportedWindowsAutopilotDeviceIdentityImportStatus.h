// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusValue){

	MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusUnknown = 0,
	MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusPending = 1,
	MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusPartial = 2,
	MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusComplete = 3,
	MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusError = 4,
    MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusEndOfEnum
};

@interface MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus : NSObject

+(MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) unknown;
+(MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) pending;
+(MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) partial;
+(MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) complete;
+(MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) error;

+(MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) UnknownEnumValue;

+(MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) importedWindowsAutopilotDeviceIdentityImportStatusWithEnumValue:(MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphImportedWindowsAutopilotDeviceIdentityImportStatusValue enumValue;

@end


@interface NSString (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus)

- (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) toMSGraphImportedWindowsAutopilotDeviceIdentityImportStatus;

@end
