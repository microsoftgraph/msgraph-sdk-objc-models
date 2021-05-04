// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsAutopilotDeviceDeletionState.h"


#import "MSObject.h"

@interface MSGraphDeletedWindowsAutopilotDeviceState : MSObject

@property (nonnull, nonatomic, setter=setDeletionState:, getter=deletionState) MSGraphWindowsAutopilotDeviceDeletionState* deletionState;
@property (nullable, nonatomic, setter=setDeviceRegistrationId:, getter=deviceRegistrationId) NSString* deviceRegistrationId;
@property (nullable, nonatomic, setter=setErrorMessage:, getter=errorMessage) NSString* errorMessage;
@property (nullable, nonatomic, setter=setSerialNumber:, getter=serialNumber) NSString* serialNumber;

@end
