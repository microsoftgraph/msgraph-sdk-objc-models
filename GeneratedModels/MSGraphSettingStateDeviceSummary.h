// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphSettingStateDeviceSummary : MSGraphEntity

  @property (nonatomic, setter=setCompliantDeviceCount:, getter=compliantDeviceCount) int32_t compliantDeviceCount;
    @property (nonatomic, setter=setConflictDeviceCount:, getter=conflictDeviceCount) int32_t conflictDeviceCount;
    @property (nonatomic, setter=setErrorDeviceCount:, getter=errorDeviceCount) int32_t errorDeviceCount;
    @property (nullable, nonatomic, setter=setInstancePath:, getter=instancePath) NSString* instancePath;
    @property (nonatomic, setter=setNonCompliantDeviceCount:, getter=nonCompliantDeviceCount) int32_t nonCompliantDeviceCount;
    @property (nonatomic, setter=setNotApplicableDeviceCount:, getter=notApplicableDeviceCount) int32_t notApplicableDeviceCount;
    @property (nonatomic, setter=setRemediatedDeviceCount:, getter=remediatedDeviceCount) int32_t remediatedDeviceCount;
    @property (nullable, nonatomic, setter=setSettingName:, getter=settingName) NSString* settingName;
    @property (nonatomic, setter=setUnknownDeviceCount:, getter=unknownDeviceCount) int32_t unknownDeviceCount;
  
@end
