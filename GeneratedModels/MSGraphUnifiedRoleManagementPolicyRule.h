// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUnifiedRoleManagementPolicyRuleTarget; 


#import "MSGraphEntity.h"

@interface MSGraphUnifiedRoleManagementPolicyRule : MSGraphEntity

  @property (nullable, nonatomic, setter=setTarget:, getter=target) MSGraphUnifiedRoleManagementPolicyRuleTarget* target;
  
@end
