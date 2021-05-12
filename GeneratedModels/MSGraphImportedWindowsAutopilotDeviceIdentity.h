// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphImportedWindowsAutopilotDeviceIdentityState; 


#import "MSGraphEntity.h"

@interface MSGraphImportedWindowsAutopilotDeviceIdentity : MSGraphEntity

  @property (nullable, nonatomic, setter=setAssignedUserPrincipalName:, getter=assignedUserPrincipalName) NSString* assignedUserPrincipalName;
    @property (nullable, nonatomic, setter=setGroupTag:, getter=groupTag) NSString* groupTag;
    @property (nullable, nonatomic, setter=setHardwareIdentifier:, getter=hardwareIdentifier) NSString* hardwareIdentifier;
    @property (nullable, nonatomic, setter=setImportId:, getter=importId) NSString* importId;
    @property (nullable, nonatomic, setter=setProductKey:, getter=productKey) NSString* productKey;
    @property (nullable, nonatomic, setter=setSerialNumber:, getter=serialNumber) NSString* serialNumber;
    @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphImportedWindowsAutopilotDeviceIdentityState* state;
  
@end
