// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphB2xIdentityUserFlow()
{
    MSGraphUserFlowApiConnectorConfiguration* _apiConnectorConfiguration;
    NSArray* _identityProviders;
    NSArray* _languages;
    NSArray* _userAttributeAssignments;
    NSArray* _userFlowIdentityProviders;
}
@end

@implementation MSGraphB2xIdentityUserFlow

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.b2xIdentityUserFlow";
    }
    return self;
}
- (MSGraphUserFlowApiConnectorConfiguration*) apiConnectorConfiguration
{
    if(!_apiConnectorConfiguration){
        _apiConnectorConfiguration = [[MSGraphUserFlowApiConnectorConfiguration alloc] initWithDictionary: self.dictionary[@"apiConnectorConfiguration"]];
    }
    return _apiConnectorConfiguration;
}

- (void) setApiConnectorConfiguration: (MSGraphUserFlowApiConnectorConfiguration*) val
{
    _apiConnectorConfiguration = val;
    self.dictionary[@"apiConnectorConfiguration"] = val;
}

- (NSArray*) identityProviders
{
    if(!_identityProviders){
        
    NSMutableArray *identityProvidersResult = [NSMutableArray array];
    NSArray *identityProviders = self.dictionary[@"identityProviders"];

    if ([identityProviders isKindOfClass:[NSArray class]]){
        for (id tempIdentityProvider in identityProviders){
            [identityProvidersResult addObject:tempIdentityProvider];
        }
    }

    _identityProviders = identityProvidersResult;
        
    }
    return _identityProviders;
}

- (void) setIdentityProviders: (NSArray*) val
{
    _identityProviders = val;
    self.dictionary[@"identityProviders"] = val;
}

- (NSArray*) languages
{
    if(!_languages){
        
    NSMutableArray *languagesResult = [NSMutableArray array];
    NSArray *languages = self.dictionary[@"languages"];

    if ([languages isKindOfClass:[NSArray class]]){
        for (id tempUserFlowLanguageConfiguration in languages){
            [languagesResult addObject:tempUserFlowLanguageConfiguration];
        }
    }

    _languages = languagesResult;
        
    }
    return _languages;
}

- (void) setLanguages: (NSArray*) val
{
    _languages = val;
    self.dictionary[@"languages"] = val;
}

- (NSArray*) userAttributeAssignments
{
    if(!_userAttributeAssignments){
        
    NSMutableArray *userAttributeAssignmentsResult = [NSMutableArray array];
    NSArray *userAttributeAssignments = self.dictionary[@"userAttributeAssignments"];

    if ([userAttributeAssignments isKindOfClass:[NSArray class]]){
        for (id tempIdentityUserFlowAttributeAssignment in userAttributeAssignments){
            [userAttributeAssignmentsResult addObject:tempIdentityUserFlowAttributeAssignment];
        }
    }

    _userAttributeAssignments = userAttributeAssignmentsResult;
        
    }
    return _userAttributeAssignments;
}

- (void) setUserAttributeAssignments: (NSArray*) val
{
    _userAttributeAssignments = val;
    self.dictionary[@"userAttributeAssignments"] = val;
}

- (NSArray*) userFlowIdentityProviders
{
    if(!_userFlowIdentityProviders){
        
    NSMutableArray *userFlowIdentityProvidersResult = [NSMutableArray array];
    NSArray *userFlowIdentityProviders = self.dictionary[@"userFlowIdentityProviders"];

    if ([userFlowIdentityProviders isKindOfClass:[NSArray class]]){
        for (id tempIdentityProviderBase in userFlowIdentityProviders){
            [userFlowIdentityProvidersResult addObject:tempIdentityProviderBase];
        }
    }

    _userFlowIdentityProviders = userFlowIdentityProvidersResult;
        
    }
    return _userFlowIdentityProviders;
}

- (void) setUserFlowIdentityProviders: (NSArray*) val
{
    _userFlowIdentityProviders = val;
    self.dictionary[@"userFlowIdentityProviders"] = val;
}


@end
