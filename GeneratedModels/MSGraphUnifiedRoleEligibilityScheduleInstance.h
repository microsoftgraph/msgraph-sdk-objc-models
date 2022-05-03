// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphUnifiedRoleScheduleInstanceBase.h"

@interface MSGraphUnifiedRoleEligibilityScheduleInstance : MSGraphUnifiedRoleScheduleInstanceBase

  @property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
    @property (nullable, nonatomic, setter=setMemberType:, getter=memberType) NSString* memberType;
    @property (nullable, nonatomic, setter=setRoleEligibilityScheduleId:, getter=roleEligibilityScheduleId) NSString* roleEligibilityScheduleId;
    @property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
  
@end
