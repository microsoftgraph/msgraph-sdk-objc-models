// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphApprovalSettings; 


#import "MSGraphUnifiedRoleManagementPolicyRule.h"

@interface MSGraphUnifiedRoleManagementPolicyApprovalRule : MSGraphUnifiedRoleManagementPolicyRule

  @property (nullable, nonatomic, setter=setSetting:, getter=setting) MSGraphApprovalSettings* setting;
  
@end
