// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphEntitlementManagementSchedule; 


#import "MSObject.h"

@interface MSGraphAccessPackageAssignmentRequestRequirements : MSObject

@property (nonatomic, setter=setAllowCustomAssignmentSchedule:, getter=allowCustomAssignmentSchedule) BOOL allowCustomAssignmentSchedule;
@property (nonatomic, setter=setIsApprovalRequiredForAdd:, getter=isApprovalRequiredForAdd) BOOL isApprovalRequiredForAdd;
@property (nonatomic, setter=setIsApprovalRequiredForUpdate:, getter=isApprovalRequiredForUpdate) BOOL isApprovalRequiredForUpdate;
@property (nullable, nonatomic, setter=setPolicyDescription:, getter=policyDescription) NSString* policyDescription;
@property (nullable, nonatomic, setter=setPolicyDisplayName:, getter=policyDisplayName) NSString* policyDisplayName;
@property (nullable, nonatomic, setter=setPolicyId:, getter=policyId) NSString* policyId;
@property (nullable, nonatomic, setter=setSchedule:, getter=schedule) MSGraphEntitlementManagementSchedule* schedule;

@end
