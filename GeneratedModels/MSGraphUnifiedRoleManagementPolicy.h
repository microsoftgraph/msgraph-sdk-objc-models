// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentity, MSGraphUnifiedRoleManagementPolicyRule; 


#import "MSGraphEntity.h"

@interface MSGraphUnifiedRoleManagementPolicy : MSGraphEntity

  @property (nonnull, nonatomic, setter=setUnifiedRoleManagementPolicyDescription:, getter=unifiedRoleManagementPolicyDescription) NSString* unifiedRoleManagementPolicyDescription;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsOrganizationDefault:, getter=isOrganizationDefault) BOOL isOrganizationDefault;
    @property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) MSGraphIdentity* lastModifiedBy;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonnull, nonatomic, setter=setScopeId:, getter=scopeId) NSString* scopeId;
    @property (nonnull, nonatomic, setter=setScopeType:, getter=scopeType) NSString* scopeType;
    @property (nullable, nonatomic, setter=setEffectiveRules:, getter=effectiveRules) NSArray* effectiveRules;
    @property (nullable, nonatomic, setter=setRules:, getter=rules) NSArray* rules;
  
@end
