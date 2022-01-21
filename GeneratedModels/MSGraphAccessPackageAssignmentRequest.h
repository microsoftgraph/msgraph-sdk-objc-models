// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEntitlementManagementSchedule, MSGraphAccessPackage, MSGraphAccessPackageAssignment, MSGraphAccessPackageSubject; 
#import "MSGraphAccessPackageRequestType.h"
#import "MSGraphAccessPackageRequestState.h"


#import "MSGraphEntity.h"

@interface MSGraphAccessPackageAssignmentRequest : MSGraphEntity

  @property (nullable, nonatomic, setter=setCompletedDateTime:, getter=completedDateTime) NSDate* completedDateTime;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setRequestType:, getter=requestType) MSGraphAccessPackageRequestType* requestType;
    @property (nullable, nonatomic, setter=setSchedule:, getter=schedule) MSGraphEntitlementManagementSchedule* schedule;
    @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphAccessPackageRequestState* state;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) NSString* status;
    @property (nullable, nonatomic, setter=setAccessPackage:, getter=accessPackage) MSGraphAccessPackage* accessPackage;
    @property (nullable, nonatomic, setter=setAssignment:, getter=assignment) MSGraphAccessPackageAssignment* assignment;
    @property (nullable, nonatomic, setter=setRequestor:, getter=requestor) MSGraphAccessPackageSubject* requestor;
  
@end
