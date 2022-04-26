// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphUnifiedRoleManagementPolicyRule.h"

@interface MSGraphUnifiedRoleManagementPolicyEnablementRule : MSGraphUnifiedRoleManagementPolicyRule

  @property (nullable, nonatomic, setter=setEnabledRules:, getter=enabledRules) NSArray* enabledRules;
  
@end
