// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceExchangeAccessStateSummary, MSGraphDeviceOperatingSystemSummary; 


#import "MSGraphEntity.h"

@interface MSGraphManagedDeviceOverview : MSGraphEntity

  @property (nullable, nonatomic, setter=setDeviceExchangeAccessStateSummary:, getter=deviceExchangeAccessStateSummary) MSGraphDeviceExchangeAccessStateSummary* deviceExchangeAccessStateSummary;
    @property (nullable, nonatomic, setter=setDeviceOperatingSystemSummary:, getter=deviceOperatingSystemSummary) MSGraphDeviceOperatingSystemSummary* deviceOperatingSystemSummary;
    @property (nonatomic, setter=setDualEnrolledDeviceCount:, getter=dualEnrolledDeviceCount) int32_t dualEnrolledDeviceCount;
    @property (nonatomic, setter=setEnrolledDeviceCount:, getter=enrolledDeviceCount) int32_t enrolledDeviceCount;
    @property (nonatomic, setter=setMdmEnrolledCount:, getter=mdmEnrolledCount) int32_t mdmEnrolledCount;
  
@end
