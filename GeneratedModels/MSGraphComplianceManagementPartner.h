// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphComplianceManagementPartnerAssignment; 
#import "MSGraphDeviceManagementPartnerTenantState.h"


#import "MSGraphEntity.h"

@interface MSGraphComplianceManagementPartner : MSGraphEntity

  @property (nonnull, nonatomic, setter=setLastHeartbeatDateTime:, getter=lastHeartbeatDateTime) NSDate* lastHeartbeatDateTime;
    @property (nonnull, nonatomic, setter=setPartnerState:, getter=partnerState) MSGraphDeviceManagementPartnerTenantState* partnerState;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setMacOsOnboarded:, getter=macOsOnboarded) BOOL macOsOnboarded;
    @property (nonatomic, setter=setAndroidOnboarded:, getter=androidOnboarded) BOOL androidOnboarded;
    @property (nonatomic, setter=setIosOnboarded:, getter=iosOnboarded) BOOL iosOnboarded;
    @property (nullable, nonatomic, setter=setMacOsEnrollmentAssignments:, getter=macOsEnrollmentAssignments) NSArray* macOsEnrollmentAssignments;
    @property (nullable, nonatomic, setter=setAndroidEnrollmentAssignments:, getter=androidEnrollmentAssignments) NSArray* androidEnrollmentAssignments;
    @property (nullable, nonatomic, setter=setIosEnrollmentAssignments:, getter=iosEnrollmentAssignments) NSArray* iosEnrollmentAssignments;
  
@end
