// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRequestSchedule, MSGraphUnifiedRoleEligibilitySchedule; 


#import "MSGraphUnifiedRoleScheduleBase.h"

@interface MSGraphUnifiedRoleAssignmentSchedule : MSGraphUnifiedRoleScheduleBase

  @property (nullable, nonatomic, setter=setAssignmentType:, getter=assignmentType) NSString* assignmentType;
    @property (nullable, nonatomic, setter=setMemberType:, getter=memberType) NSString* memberType;
    @property (nullable, nonatomic, setter=setScheduleInfo:, getter=scheduleInfo) MSGraphRequestSchedule* scheduleInfo;
    @property (nullable, nonatomic, setter=setActivatedUsing:, getter=activatedUsing) MSGraphUnifiedRoleEligibilitySchedule* activatedUsing;
  
@end
