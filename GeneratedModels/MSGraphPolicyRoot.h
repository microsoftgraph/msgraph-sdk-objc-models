// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAuthenticationMethodsPolicy, MSGraphActivityBasedTimeoutPolicy, MSGraphAuthorizationPolicy, MSGraphClaimsMappingPolicy, MSGraphHomeRealmDiscoveryPolicy, MSGraphPermissionGrantPolicy, MSGraphTokenIssuancePolicy, MSGraphTokenLifetimePolicy, MSGraphFeatureRolloutPolicy, MSGraphAdminConsentRequestPolicy, MSGraphConditionalAccessPolicy, MSGraphIdentitySecurityDefaultsEnforcementPolicy; 


#import "MSGraphEntity.h"

@interface MSGraphPolicyRoot : MSGraphEntity

  @property (nullable, nonatomic, setter=setAuthenticationMethodsPolicy:, getter=authenticationMethodsPolicy) MSGraphAuthenticationMethodsPolicy* authenticationMethodsPolicy;
    @property (nullable, nonatomic, setter=setActivityBasedTimeoutPolicies:, getter=activityBasedTimeoutPolicies) NSArray* activityBasedTimeoutPolicies;
    @property (nullable, nonatomic, setter=setAuthorizationPolicy:, getter=authorizationPolicy) MSGraphAuthorizationPolicy* authorizationPolicy;
    @property (nullable, nonatomic, setter=setClaimsMappingPolicies:, getter=claimsMappingPolicies) NSArray* claimsMappingPolicies;
    @property (nullable, nonatomic, setter=setHomeRealmDiscoveryPolicies:, getter=homeRealmDiscoveryPolicies) NSArray* homeRealmDiscoveryPolicies;
    @property (nullable, nonatomic, setter=setPermissionGrantPolicies:, getter=permissionGrantPolicies) NSArray* permissionGrantPolicies;
    @property (nullable, nonatomic, setter=setTokenIssuancePolicies:, getter=tokenIssuancePolicies) NSArray* tokenIssuancePolicies;
    @property (nullable, nonatomic, setter=setTokenLifetimePolicies:, getter=tokenLifetimePolicies) NSArray* tokenLifetimePolicies;
    @property (nullable, nonatomic, setter=setFeatureRolloutPolicies:, getter=featureRolloutPolicies) NSArray* featureRolloutPolicies;
    @property (nullable, nonatomic, setter=setAdminConsentRequestPolicy:, getter=adminConsentRequestPolicy) MSGraphAdminConsentRequestPolicy* adminConsentRequestPolicy;
    @property (nullable, nonatomic, setter=setConditionalAccessPolicies:, getter=conditionalAccessPolicies) NSArray* conditionalAccessPolicies;
    @property (nullable, nonatomic, setter=setIdentitySecurityDefaultsEnforcementPolicy:, getter=identitySecurityDefaultsEnforcementPolicy) MSGraphIdentitySecurityDefaultsEnforcementPolicy* identitySecurityDefaultsEnforcementPolicy;
  
@end
