// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFido2AuthenticationMethodConfiguration()
{
    BOOL _isAttestationEnforced;
    BOOL _isSelfServiceRegistrationAllowed;
    MSGraphFido2KeyRestrictions* _keyRestrictions;
    NSArray* _includeTargets;
}
@end

@implementation MSGraphFido2AuthenticationMethodConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.fido2AuthenticationMethodConfiguration";
    }
    return self;
}
- (BOOL) isAttestationEnforced
{
    _isAttestationEnforced = [self.dictionary[@"isAttestationEnforced"] boolValue];
    return _isAttestationEnforced;
}

- (void) setIsAttestationEnforced: (BOOL) val
{
    _isAttestationEnforced = val;
    self.dictionary[@"isAttestationEnforced"] = @(val);
}

- (BOOL) isSelfServiceRegistrationAllowed
{
    _isSelfServiceRegistrationAllowed = [self.dictionary[@"isSelfServiceRegistrationAllowed"] boolValue];
    return _isSelfServiceRegistrationAllowed;
}

- (void) setIsSelfServiceRegistrationAllowed: (BOOL) val
{
    _isSelfServiceRegistrationAllowed = val;
    self.dictionary[@"isSelfServiceRegistrationAllowed"] = @(val);
}

- (MSGraphFido2KeyRestrictions*) keyRestrictions
{
    if(!_keyRestrictions){
        _keyRestrictions = [[MSGraphFido2KeyRestrictions alloc] initWithDictionary: self.dictionary[@"keyRestrictions"]];
    }
    return _keyRestrictions;
}

- (void) setKeyRestrictions: (MSGraphFido2KeyRestrictions*) val
{
    _keyRestrictions = val;
    self.dictionary[@"keyRestrictions"] = val;
}

- (NSArray*) includeTargets
{
    if(!_includeTargets){
        
    NSMutableArray *includeTargetsResult = [NSMutableArray array];
    NSArray *includeTargets = self.dictionary[@"includeTargets"];

    if ([includeTargets isKindOfClass:[NSArray class]]){
        for (id tempAuthenticationMethodTarget in includeTargets){
            [includeTargetsResult addObject:tempAuthenticationMethodTarget];
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


@end
