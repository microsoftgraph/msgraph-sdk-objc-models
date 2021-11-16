// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphVolumeType.h"


#import "MSGraphEntity.h"

@interface MSGraphBitlockerRecoveryKey : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDeviceId:, getter=deviceId) NSString* deviceId;
    @property (nonnull, nonatomic, setter=setKey:, getter=key) NSString* key;
    @property (nullable, nonatomic, setter=setVolumeType:, getter=volumeType) MSGraphVolumeType* volumeType;
  
@end
