// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus.h"


#import "MSObject.h"

@interface MSGraphImportedWindowsAutopilotDeviceIdentityState : MSObject

@property (nonatomic, setter=setDeviceErrorCode:, getter=deviceErrorCode) int32_t deviceErrorCode;
@property (nullable, nonatomic, setter=setDeviceErrorName:, getter=deviceErrorName) NSString* deviceErrorName;
@property (nonnull, nonatomic, setter=setDeviceImportStatus:, getter=deviceImportStatus) MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus* deviceImportStatus;
@property (nullable, nonatomic, setter=setDeviceRegistrationId:, getter=deviceRegistrationId) NSString* deviceRegistrationId;

@end
