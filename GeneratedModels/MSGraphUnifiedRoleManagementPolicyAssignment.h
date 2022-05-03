// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUnifiedRoleManagementPolicy; 


#import "MSGraphEntity.h"

@interface MSGraphUnifiedRoleManagementPolicyAssignment : MSGraphEntity

  @property (nonnull, nonatomic, setter=setPolicyId:, getter=policyId) NSString* policyId;
    @property (nullable, nonatomic, setter=setRoleDefinitionId:, getter=roleDefinitionId) NSString* roleDefinitionId;
    @property (nonnull, nonatomic, setter=setScopeId:, getter=scopeId) NSString* scopeId;
    @property (nonnull, nonatomic, setter=setScopeType:, getter=scopeType) NSString* scopeType;
    @property (nullable, nonatomic, setter=setPolicy:, getter=policy) MSGraphUnifiedRoleManagementPolicy* policy;
  
@end
