// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphComplianceManagementPartnerAssignment; 
#import "MSGraphDeviceManagementPartnerTenantState.h"


#import "MSGraphEntity.h"

@interface MSGraphComplianceManagementPartner : MSGraphEntity

  @property (nullable, nonatomic, setter=setAndroidEnrollmentAssignments:, getter=androidEnrollmentAssignments) NSArray* androidEnrollmentAssignments;
    @property (nonatomic, setter=setAndroidOnboarded:, getter=androidOnboarded) BOOL androidOnboarded;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setIosEnrollmentAssignments:, getter=iosEnrollmentAssignments) NSArray* iosEnrollmentAssignments;
    @property (nonatomic, setter=setIosOnboarded:, getter=iosOnboarded) BOOL iosOnboarded;
    @property (nonnull, nonatomic, setter=setLastHeartbeatDateTime:, getter=lastHeartbeatDateTime) NSDate* lastHeartbeatDateTime;
    @property (nullable, nonatomic, setter=setMacOsEnrollmentAssignments:, getter=macOsEnrollmentAssignments) NSArray* macOsEnrollmentAssignments;
    @property (nonatomic, setter=setMacOsOnboarded:, getter=macOsOnboarded) BOOL macOsOnboarded;
    @property (nonnull, nonatomic, setter=setPartnerState:, getter=partnerState) MSGraphDeviceManagementPartnerTenantState* partnerState;
  
@end
