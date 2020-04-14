// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPolicyRoot()
{
    NSArray* _activityBasedTimeoutPolicies;
    NSArray* _claimsMappingPolicies;
    NSArray* _homeRealmDiscoveryPolicies;
    NSArray* _tokenIssuancePolicies;
    NSArray* _tokenLifetimePolicies;
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


@end
