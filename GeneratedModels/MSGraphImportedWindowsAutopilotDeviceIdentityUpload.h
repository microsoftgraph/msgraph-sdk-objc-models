// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphImportedWindowsAutopilotDeviceIdentity; 
#import "MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphImportedWindowsAutopilotDeviceIdentityUpload : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCreatedDateTimeUtc:, getter=createdDateTimeUtc) NSDate* createdDateTimeUtc;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphImportedWindowsAutopilotDeviceIdentityUploadStatus* status;
    @property (nullable, nonatomic, setter=setDeviceIdentities:, getter=deviceIdentities) NSArray* deviceIdentities;
  
@end
