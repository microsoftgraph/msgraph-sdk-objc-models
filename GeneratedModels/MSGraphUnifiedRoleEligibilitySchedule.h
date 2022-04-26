// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRequestSchedule; 


#import "MSGraphUnifiedRoleScheduleBase.h"

@interface MSGraphUnifiedRoleEligibilitySchedule : MSGraphUnifiedRoleScheduleBase

  @property (nullable, nonatomic, setter=setMemberType:, getter=memberType) NSString* memberType;
    @property (nullable, nonatomic, setter=setScheduleInfo:, getter=scheduleInfo) MSGraphRequestSchedule* scheduleInfo;
  
@end
