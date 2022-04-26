// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphUnifiedRoleManagementPolicyRule.h"

@interface MSGraphUnifiedRoleManagementPolicyAuthenticationContextRule : MSGraphUnifiedRoleManagementPolicyRule

  @property (nullable, nonatomic, setter=setClaimValue:, getter=claimValue) NSString* claimValue;
    @property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
  
@end
