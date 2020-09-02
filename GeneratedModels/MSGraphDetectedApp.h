// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphManagedDevice; 


#import "MSGraphEntity.h"

@interface MSGraphDetectedApp : MSGraphEntity

  @property (nonatomic, setter=setDeviceCount:, getter=deviceCount) int32_t deviceCount;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setSizeInByte:, getter=sizeInByte) int64_t sizeInByte;
    @property (nullable, nonatomic, setter=setVersion:, getter=version) NSString* version;
    @property (nullable, nonatomic, setter=setManagedDevices:, getter=managedDevices) NSArray* managedDevices;
  
@end
