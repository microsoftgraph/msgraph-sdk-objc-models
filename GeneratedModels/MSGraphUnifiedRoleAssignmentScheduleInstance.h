// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUnifiedRoleEligibilityScheduleInstance; 


#import "MSGraphUnifiedRoleScheduleInstanceBase.h"

@interface MSGraphUnifiedRoleAssignmentScheduleInstance : MSGraphUnifiedRoleScheduleInstanceBase

  @property (nullable, nonatomic, setter=setAssignmentType:, getter=assignmentType) NSString* assignmentType;
    @property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
    @property (nullable, nonatomic, setter=setMemberType:, getter=memberType) NSString* memberType;
    @property (nullable, nonatomic, setter=setRoleAssignmentOriginId:, getter=roleAssignmentOriginId) NSString* roleAssignmentOriginId;
    @property (nullable, nonatomic, setter=setRoleAssignmentScheduleId:, getter=roleAssignmentScheduleId) NSString* roleAssignmentScheduleId;
    @property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
    @property (nullable, nonatomic, setter=setActivatedUsing:, getter=activatedUsing) MSGraphUnifiedRoleEligibilityScheduleInstance* activatedUsing;
  
@end
