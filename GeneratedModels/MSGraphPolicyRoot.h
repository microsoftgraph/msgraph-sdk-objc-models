// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphActivityBasedTimeoutPolicy, MSGraphClaimsMappingPolicy, MSGraphHomeRealmDiscoveryPolicy, MSGraphTokenIssuancePolicy, MSGraphTokenLifetimePolicy, MSGraphConditionalAccessPolicy, MSGraphIdentitySecurityDefaultsEnforcementPolicy; 


#import "MSGraphEntity.h"

@interface MSGraphPolicyRoot : MSGraphEntity

  @property (nullable, nonatomic, setter=setActivityBasedTimeoutPolicies:, getter=activityBasedTimeoutPolicies) NSArray* activityBasedTimeoutPolicies;
    @property (nullable, nonatomic, setter=setClaimsMappingPolicies:, getter=claimsMappingPolicies) NSArray* claimsMappingPolicies;
    @property (nullable, nonatomic, setter=setHomeRealmDiscoveryPolicies:, getter=homeRealmDiscoveryPolicies) NSArray* homeRealmDiscoveryPolicies;
    @property (nullable, nonatomic, setter=setTokenIssuancePolicies:, getter=tokenIssuancePolicies) NSArray* tokenIssuancePolicies;
    @property (nullable, nonatomic, setter=setTokenLifetimePolicies:, getter=tokenLifetimePolicies) NSArray* tokenLifetimePolicies;
    @property (nullable, nonatomic, setter=setConditionalAccessPolicies:, getter=conditionalAccessPolicies) NSArray* conditionalAccessPolicies;
    @property (nullable, nonatomic, setter=setIdentitySecurityDefaultsEnforcementPolicy:, getter=identitySecurityDefaultsEnforcementPolicy) MSGraphIdentitySecurityDefaultsEnforcementPolicy* identitySecurityDefaultsEnforcementPolicy;
  
@end
