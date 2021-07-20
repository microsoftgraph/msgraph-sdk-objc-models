// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphApproval; 


#import "MSGraphEntity.h"

@interface MSGraphEntitlementManagement : MSGraphEntity

  @property (nullable, nonatomic, setter=setAccessPackageAssignmentApprovals:, getter=accessPackageAssignmentApprovals) NSArray* accessPackageAssignmentApprovals;
  
@end
