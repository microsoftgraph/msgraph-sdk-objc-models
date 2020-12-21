// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphDeviceManagementPartnerAppType.h"
#import "MSGraphDeviceManagementPartnerTenantState.h"


#import "MSGraphEntity.h"

@interface MSGraphDeviceManagementPartner : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsConfigured:, getter=isConfigured) BOOL isConfigured;
    @property (nonnull, nonatomic, setter=setLastHeartbeatDateTime:, getter=lastHeartbeatDateTime) NSDate* lastHeartbeatDateTime;
    @property (nonnull, nonatomic, setter=setPartnerAppType:, getter=partnerAppType) MSGraphDeviceManagementPartnerAppType* partnerAppType;
    @property (nonnull, nonatomic, setter=setPartnerState:, getter=partnerState) MSGraphDeviceManagementPartnerTenantState* partnerState;
    @property (nullable, nonatomic, setter=setSingleTenantAppId:, getter=singleTenantAppId) NSString* singleTenantAppId;
    @property (nullable, nonatomic, setter=setWhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime:, getter=whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime) NSDate* whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime;
    @property (nullable, nonatomic, setter=setWhenPartnerDevicesWillBeRemovedDateTime:, getter=whenPartnerDevicesWillBeRemovedDateTime) NSDate* whenPartnerDevicesWillBeRemovedDateTime;
  
@end
