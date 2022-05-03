// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEntitlementManagementSchedule, MSGraphAccessPackage, MSGraphAccessPackageAssignmentPolicy, MSGraphAccessPackageSubject; 
#import "MSGraphAccessPackageAssignmentState.h"


#import "MSGraphEntity.h"

@interface MSGraphAccessPackageAssignment : MSGraphEntity

  @property (nullable, nonatomic, setter=setExpiredDateTime:, getter=expiredDateTime) NSDate* expiredDateTime;
    @property (nullable, nonatomic, setter=setSchedule:, getter=schedule) MSGraphEntitlementManagementSchedule* schedule;
    @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphAccessPackageAssignmentState* state;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) NSString* status;
    @property (nullable, nonatomic, setter=setAccessPackage:, getter=accessPackage) MSGraphAccessPackage* accessPackage;
    @property (nullable, nonatomic, setter=setAssignmentPolicy:, getter=assignmentPolicy) MSGraphAccessPackageAssignmentPolicy* assignmentPolicy;
    @property (nullable, nonatomic, setter=setTarget:, getter=target) MSGraphAccessPackageSubject* target;
  
@end
