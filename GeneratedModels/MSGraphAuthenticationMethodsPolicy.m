// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuthenticationMethodsPolicy()
{
    NSString* _authenticationMethodsPolicyDescription;
    NSString* _displayName;
    NSDate* _lastModifiedDateTime;
    NSString* _policyVersion;
    int32_t _reconfirmationInDays;
    MSGraphRegistrationEnforcement* _registrationEnforcement;
    NSArray* _authenticationMethodConfigurations;
}
@end

@implementation MSGraphAuthenticationMethodsPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.authenticationMethodsPolicy";
    }
    return self;
}
- (NSString*) authenticationMethodsPolicyDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setAuthenticationMethodsPolicyDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSString*) policyVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"policyVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"policyVersion"];
}

- (void) setPolicyVersion: (NSString*) val
{
    self.dictionary[@"policyVersion"] = val;
}

- (int32_t) reconfirmationInDays
{
    _reconfirmationInDays = [self.dictionary[@"reconfirmationInDays"] intValue];
    return _reconfirmationInDays;
}

- (void) setReconfirmationInDays: (int32_t) val
{
    _reconfirmationInDays = val;
    self.dictionary[@"reconfirmationInDays"] = @(val);
}

- (MSGraphRegistrationEnforcement*) registrationEnforcement
{
    if(!_registrationEnforcement){
        _registrationEnforcement = [[MSGraphRegistrationEnforcement alloc] initWithDictionary: self.dictionary[@"registrationEnforcement"]];
    }
    return _registrationEnforcement;
}

- (void) setRegistrationEnforcement: (MSGraphRegistrationEnforcement*) val
{
    _registrationEnforcement = val;
    self.dictionary[@"registrationEnforcement"] = val;
}

- (NSArray*) authenticationMethodConfigurations
{
    if(!_authenticationMethodConfigurations){
        
    NSMutableArray *authenticationMethodConfigurationsResult = [NSMutableArray array];
    NSArray *authenticationMethodConfigurations = self.dictionary[@"authenticationMethodConfigurations"];

    if ([authenticationMethodConfigurations isKindOfClass:[NSArray class]]){
        for (id tempAuthenticationMethodConfiguration in authenticationMethodConfigurations){
            [authenticationMethodConfigurationsResult addObject:tempAuthenticationMethodConfiguration];
        }
    }

    _authenticationMethodConfigurations = authenticationMethodConfigurationsResult;
        
    }
    return _authenticationMethodConfigurations;
}

- (void) setAuthenticationMethodConfigurations: (NSArray*) val
{
    _authenticationMethodConfigurations = val;
    self.dictionary[@"authenticationMethodConfigurations"] = val;
}


@end
