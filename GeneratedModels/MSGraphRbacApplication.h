// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUnifiedRoleAssignment, MSGraphUnifiedRoleDefinition, MSGraphUnifiedRoleAssignmentScheduleInstance, MSGraphUnifiedRoleAssignmentScheduleRequest, MSGraphUnifiedRoleAssignmentSchedule, MSGraphUnifiedRoleEligibilityScheduleInstance, MSGraphUnifiedRoleEligibilityScheduleRequest, MSGraphUnifiedRoleEligibilitySchedule; 


#import "MSGraphEntity.h"

@interface MSGraphRbacApplication : MSGraphEntity

  @property (nullable, nonatomic, setter=setRoleAssignments:, getter=roleAssignments) NSArray* roleAssignments;
    @property (nullable, nonatomic, setter=setRoleDefinitions:, getter=roleDefinitions) NSArray* roleDefinitions;
    @property (nullable, nonatomic, setter=setRoleAssignmentScheduleInstances:, getter=roleAssignmentScheduleInstances) NSArray* roleAssignmentScheduleInstances;
    @property (nullable, nonatomic, setter=setRoleAssignmentScheduleRequests:, getter=roleAssignmentScheduleRequests) NSArray* roleAssignmentScheduleRequests;
    @property (nullable, nonatomic, setter=setRoleAssignmentSchedules:, getter=roleAssignmentSchedules) NSArray* roleAssignmentSchedules;
    @property (nullable, nonatomic, setter=setRoleEligibilityScheduleInstances:, getter=roleEligibilityScheduleInstances) NSArray* roleEligibilityScheduleInstances;
    @property (nullable, nonatomic, setter=setRoleEligibilityScheduleRequests:, getter=roleEligibilityScheduleRequests) NSArray* roleEligibilityScheduleRequests;
    @property (nullable, nonatomic, setter=setRoleEligibilitySchedules:, getter=roleEligibilitySchedules) NSArray* roleEligibilitySchedules;
  
@end
