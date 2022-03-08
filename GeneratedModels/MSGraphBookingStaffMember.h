// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphBookingWorkHours; 
#import "MSGraphBookingStaffRole.h"


#import "MSGraphBookingStaffMemberBase.h"

@interface MSGraphBookingStaffMember : MSGraphBookingStaffMemberBase

  @property (nonatomic, setter=setAvailabilityIsAffectedByPersonalCalendar:, getter=availabilityIsAffectedByPersonalCalendar) BOOL availabilityIsAffectedByPersonalCalendar;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setEmailAddress:, getter=emailAddress) NSString* emailAddress;
    @property (nonnull, nonatomic, setter=setRole:, getter=role) MSGraphBookingStaffRole* role;
    @property (nullable, nonatomic, setter=setTimeZone:, getter=timeZone) NSString* timeZone;
    @property (nonatomic, setter=setUseBusinessHours:, getter=useBusinessHours) BOOL useBusinessHours;
    @property (nullable, nonatomic, setter=setWorkingHours:, getter=workingHours) NSArray* workingHours;
  
@end
