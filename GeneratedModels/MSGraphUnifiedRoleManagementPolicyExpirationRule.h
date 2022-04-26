// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSDuration; 


#import "MSGraphUnifiedRoleManagementPolicyRule.h"

@interface MSGraphUnifiedRoleManagementPolicyExpirationRule : MSGraphUnifiedRoleManagementPolicyRule

  @property (nonatomic, setter=setIsExpirationRequired:, getter=isExpirationRequired) BOOL isExpirationRequired;
    @property (nullable, nonatomic, setter=setMaximumDuration:, getter=maximumDuration) MSDuration* maximumDuration;
  
@end
