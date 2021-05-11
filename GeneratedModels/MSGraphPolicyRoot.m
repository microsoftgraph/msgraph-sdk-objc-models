// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPolicyRoot()
{
    MSGraphAuthenticationMethodsPolicy* _authenticationMethodsPolicy;
    MSGraphAuthenticationFlowsPolicy* _authenticationFlowsPolicy;
    NSArray* _activityBasedTimeoutPolicies;
    MSGraphAuthorizationPolicy* _authorizationPolicy;
    NSArray* _claimsMappingPolicies;
    NSArray* _homeRealmDiscoveryPolicies;
    NSArray* _permissionGrantPolicies;
    NSArray* _tokenIssuancePolicies;
    NSArray* _tokenLifetimePolicies;
    NSArray* _featureRolloutPolicies;
    MSGraphAdminConsentRequestPolicy* _adminConsentRequestPolicy;
    NSArray* _conditionalAccessPolicies;
    MSGraphIdentitySecurityDefaultsEnforcementPolicy* _identitySecurityDefaultsEnforcementPolicy;
}
@end

@implementation MSGraphPolicyRoot

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.policyRoot";
    }
    return self;
}
- (MSGraphAuthenticationMethodsPolicy*) authenticationMethodsPolicy
{
    if(!_authenticationMethodsPolicy){
        _authenticationMethodsPolicy = [[MSGraphAuthenticationMethodsPolicy alloc] initWithDictionary: self.dictionary[@"authenticationMethodsPolicy"]];
    }
    return _authenticationMethodsPolicy;
}

- (void) setAuthenticationMethodsPolicy: (MSGraphAuthenticationMethodsPolicy*) val
{
    _authenticationMethodsPolicy = val;
    self.dictionary[@"authenticationMethodsPolicy"] = val;
}

- (MSGraphAuthenticationFlowsPolicy*) authenticationFlowsPolicy
{
    if(!_authenticationFlowsPolicy){
        _authenticationFlowsPolicy = [[MSGraphAuthenticationFlowsPolicy alloc] initWithDictionary: self.dictionary[@"authenticationFlowsPolicy"]];
    }
    return _authenticationFlowsPolicy;
}

- (void) setAuthenticationFlowsPolicy: (MSGraphAuthenticationFlowsPolicy*) val
{
    _authenticationFlowsPolicy = val;
    self.dictionary[@"authenticationFlowsPolicy"] = val;
}

- (NSArray*) activityBasedTimeoutPolicies
{
    if(!_activityBasedTimeoutPolicies){
        
    NSMutableArray *activityBasedTimeoutPoliciesResult = [NSMutableArray array];
    NSArray *activityBasedTimeoutPolicies = self.dictionary[@"activityBasedTimeoutPolicies"];

    if ([activityBasedTimeoutPolicies isKindOfClass:[NSArray class]]){
        for (id tempActivityBasedTimeoutPolicy in activityBasedTimeoutPolicies){
            [activityBasedTimeoutPoliciesResult addObject:tempActivityBasedTimeoutPolicy];
        }
    }

    _activityBasedTimeoutPolicies = activityBasedTimeoutPoliciesResult;
        
    }
    return _activityBasedTimeoutPolicies;
}

- (void) setActivityBasedTimeoutPolicies: (NSArray*) val
{
    _activityBasedTimeoutPolicies = val;
    self.dictionary[@"activityBasedTimeoutPolicies"] = val;
}

- (MSGraphAuthorizationPolicy*) authorizationPolicy
{
    if(!_authorizationPolicy){
        _authorizationPolicy = [[MSGraphAuthorizationPolicy alloc] initWithDictionary: self.dictionary[@"authorizationPolicy"]];
    }
    return _authorizationPolicy;
}

- (void) setAuthorizationPolicy: (MSGraphAuthorizationPolicy*) val
{
    _authorizationPolicy = val;
    self.dictionary[@"authorizationPolicy"] = val;
}

- (NSArray*) claimsMappingPolicies
{
    if(!_claimsMappingPolicies){
        
    NSMutableArray *claimsMappingPoliciesResult = [NSMutableArray array];
    NSArray *claimsMappingPolicies = self.dictionary[@"claimsMappingPolicies"];

    if ([claimsMappingPolicies isKindOfClass:[NSArray class]]){
        for (id tempClaimsMappingPolicy in claimsMappingPolicies){
            [claimsMappingPoliciesResult addObject:tempClaimsMappingPolicy];
        }
    }

    _claimsMappingPolicies = claimsMappingPoliciesResult;
        
    }
    return _claimsMappingPolicies;
}

- (void) setClaimsMappingPolicies: (NSArray*) val
{
    _claimsMappingPolicies = val;
    self.dictionary[@"claimsMappingPolicies"] = val;
}

- (NSArray*) homeRealmDiscoveryPolicies
{
    if(!_homeRealmDiscoveryPolicies){
        
    NSMutableArray *homeRealmDiscoveryPoliciesResult = [NSMutableArray array];
    NSArray *homeRealmDiscoveryPolicies = self.dictionary[@"homeRealmDiscoveryPolicies"];

    if ([homeRealmDiscoveryPolicies isKindOfClass:[NSArray class]]){
        for (id tempHomeRealmDiscoveryPolicy in homeRealmDiscoveryPolicies){
            [homeRealmDiscoveryPoliciesResult addObject:tempHomeRealmDiscoveryPolicy];
        }
    }

    _homeRealmDiscoveryPolicies = homeRealmDiscoveryPoliciesResult;
        
    }
    return _homeRealmDiscoveryPolicies;
}

- (void) setHomeRealmDiscoveryPolicies: (NSArray*) val
{
    _homeRealmDiscoveryPolicies = val;
    self.dictionary[@"homeRealmDiscoveryPolicies"] = val;
}

- (NSArray*) permissionGrantPolicies
{
    if(!_permissionGrantPolicies){
        
    NSMutableArray *permissionGrantPoliciesResult = [NSMutableArray array];
    NSArray *permissionGrantPolicies = self.dictionary[@"permissionGrantPolicies"];

    if ([permissionGrantPolicies isKindOfClass:[NSArray class]]){
        for (id tempPermissionGrantPolicy in permissionGrantPolicies){
            [permissionGrantPoliciesResult addObject:tempPermissionGrantPolicy];
        }
    }

    _permissionGrantPolicies = permissionGrantPoliciesResult;
        
    }
    return _permissionGrantPolicies;
}

- (void) setPermissionGrantPolicies: (NSArray*) val
{
    _permissionGrantPolicies = val;
    self.dictionary[@"permissionGrantPolicies"] = val;
}

- (NSArray*) tokenIssuancePolicies
{
    if(!_tokenIssuancePolicies){
        
    NSMutableArray *tokenIssuancePoliciesResult = [NSMutableArray array];
    NSArray *tokenIssuancePolicies = self.dictionary[@"tokenIssuancePolicies"];

    if ([tokenIssuancePolicies isKindOfClass:[NSArray class]]){
        for (id tempTokenIssuancePolicy in tokenIssuancePolicies){
            [tokenIssuancePoliciesResult addObject:tempTokenIssuancePolicy];
        }
    }

    _tokenIssuancePolicies = tokenIssuancePoliciesResult;
        
    }
    return _tokenIssuancePolicies;
}

- (void) setTokenIssuancePolicies: (NSArray*) val
{
    _tokenIssuancePolicies = val;
    self.dictionary[@"tokenIssuancePolicies"] = val;
}

- (NSArray*) tokenLifetimePolicies
{
    if(!_tokenLifetimePolicies){
        
    NSMutableArray *tokenLifetimePoliciesResult = [NSMutableArray array];
    NSArray *tokenLifetimePolicies = self.dictionary[@"tokenLifetimePolicies"];

    if ([tokenLifetimePolicies isKindOfClass:[NSArray class]]){
        for (id tempTokenLifetimePolicy in tokenLifetimePolicies){
            [tokenLifetimePoliciesResult addObject:tempTokenLifetimePolicy];
        }
    }

    _tokenLifetimePolicies = tokenLifetimePoliciesResult;
        
    }
    return _tokenLifetimePolicies;
}

- (void) setTokenLifetimePolicies: (NSArray*) val
{
    _tokenLifetimePolicies = val;
    self.dictionary[@"tokenLifetimePolicies"] = val;
}

- (NSArray*) featureRolloutPolicies
{
    if(!_featureRolloutPolicies){
        
    NSMutableArray *featureRolloutPoliciesResult = [NSMutableArray array];
    NSArray *featureRolloutPolicies = self.dictionary[@"featureRolloutPolicies"];

    if ([featureRolloutPolicies isKindOfClass:[NSArray class]]){
        for (id tempFeatureRolloutPolicy in featureRolloutPolicies){
            [featureRolloutPoliciesResult addObject:tempFeatureRolloutPolicy];
        }
    }

    _featureRolloutPolicies = featureRolloutPoliciesResult;
        
    }
    return _featureRolloutPolicies;
}

- (void) setFeatureRolloutPolicies: (NSArray*) val
{
    _featureRolloutPolicies = val;
    self.dictionary[@"featureRolloutPolicies"] = val;
}

- (MSGraphAdminConsentRequestPolicy*) adminConsentRequestPolicy
{
    if(!_adminConsentRequestPolicy){
        _adminConsentRequestPolicy = [[MSGraphAdminConsentRequestPolicy alloc] initWithDictionary: self.dictionary[@"adminConsentRequestPolicy"]];
    }
    return _adminConsentRequestPolicy;
}

- (void) setAdminConsentRequestPolicy: (MSGraphAdminConsentRequestPolicy*) val
{
    _adminConsentRequestPolicy = val;
    self.dictionary[@"adminConsentRequestPolicy"] = val;
}

- (NSArray*) conditionalAccessPolicies
{
    if(!_conditionalAccessPolicies){
        
    NSMutableArray *conditionalAccessPoliciesResult = [NSMutableArray array];
    NSArray *conditionalAccessPolicies = self.dictionary[@"conditionalAccessPolicies"];

    if ([conditionalAccessPolicies isKindOfClass:[NSArray class]]){
        for (id tempConditionalAccessPolicy in conditionalAccessPolicies){
            [conditionalAccessPoliciesResult addObject:tempConditionalAccessPolicy];
        }
    }

    _conditionalAccessPolicies = conditionalAccessPoliciesResult;
        
    }
    return _conditionalAccessPolicies;
}

- (void) setConditionalAccessPolicies: (NSArray*) val
{
    _conditionalAccessPolicies = val;
    self.dictionary[@"conditionalAccessPolicies"] = val;
}

- (MSGraphIdentitySecurityDefaultsEnforcementPolicy*) identitySecurityDefaultsEnforcementPolicy
{
    if(!_identitySecurityDefaultsEnforcementPolicy){
        _identitySecurityDefaultsEnforcementPolicy = [[MSGraphIdentitySecurityDefaultsEnforcementPolicy alloc] initWithDictionary: self.dictionary[@"identitySecurityDefaultsEnforcementPolicy"]];
    }
    return _identitySecurityDefaultsEnforcementPolicy;
}

- (void) setIdentitySecurityDefaultsEnforcementPolicy: (MSGraphIdentitySecurityDefaultsEnforcementPolicy*) val
{
    _identitySecurityDefaultsEnforcementPolicy = val;
    self.dictionary[@"identitySecurityDefaultsEnforcementPolicy"] = val;
}


@end
