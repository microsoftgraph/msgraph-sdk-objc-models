// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuthenticationMethodsRegistrationCampaign()
{
    NSArray* _excludeTargets;
    NSArray* _includeTargets;
    int32_t _snoozeDurationInDays;
    MSGraphAdvancedConfigState* _state;
}
@end

@implementation MSGraphAuthenticationMethodsRegistrationCampaign

- (NSArray*) excludeTargets
{
    if(!_excludeTargets){
        
    NSMutableArray *excludeTargetsResult = [NSMutableArray array];
    NSArray *excludeTargets = self.dictionary[@"excludeTargets"];

    if ([excludeTargets isKindOfClass:[NSArray class]]){
        for (id tempExcludeTarget in excludeTargets){
            [excludeTargetsResult addObject:tempExcludeTarget];
        }
    }

    _excludeTargets = excludeTargetsResult;
        
    }
    return _excludeTargets;
}

- (void) setExcludeTargets: (NSArray*) val
{
    _excludeTargets = val;
    self.dictionary[@"excludeTargets"] = val;
}

- (NSArray*) includeTargets
{
    if(!_includeTargets){
        
    NSMutableArray *includeTargetsResult = [NSMutableArray array];
    NSArray *includeTargets = self.dictionary[@"includeTargets"];

    if ([includeTargets isKindOfClass:[NSArray class]]){
        for (id tempAuthenticationMethodsRegistrationCampaignIncludeTarget in includeTargets){
            [includeTargetsResult addObject:tempAuthenticationMethodsRegistrationCampaignIncludeTarget];
        }
    }

    _includeTargets = includeTargetsResult;
        
    }
    return _includeTargets;
}

- (void) setIncludeTargets: (NSArray*) val
{
    _includeTargets = val;
    self.dictionary[@"includeTargets"] = val;
}

- (int32_t) snoozeDurationInDays
{
    _snoozeDurationInDays = [self.dictionary[@"snoozeDurationInDays"] intValue];
    return _snoozeDurationInDays;
}

- (void) setSnoozeDurationInDays: (int32_t) val
{
    _snoozeDurationInDays = val;
    self.dictionary[@"snoozeDurationInDays"] = @(val);
}

- (MSGraphAdvancedConfigState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphAdvancedConfigState];
    }
    return _state;
}

- (void) setState: (MSGraphAdvancedConfigState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

@end
