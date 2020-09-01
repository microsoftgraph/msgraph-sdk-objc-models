// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessConditionSet()
{
    MSGraphConditionalAccessApplications* _applications;
    NSArray* _clientAppTypes;
    MSGraphConditionalAccessLocations* _locations;
    MSGraphConditionalAccessPlatforms* _platforms;
    NSArray* _signInRiskLevels;
    MSGraphConditionalAccessUsers* _users;
}
@end

@implementation MSGraphConditionalAccessConditionSet

- (MSGraphConditionalAccessApplications*) applications
{
    if(!_applications){
        _applications = [[MSGraphConditionalAccessApplications alloc] initWithDictionary: self.dictionary[@"applications"]];
    }
    return _applications;
}

- (void) setApplications: (MSGraphConditionalAccessApplications*) val
{
    _applications = val;
    self.dictionary[@"applications"] = val;
}

- (NSArray*) clientAppTypes
{
    if(!_clientAppTypes){
        
    NSMutableArray *clientAppTypesResult = [NSMutableArray array];
    NSArray *clientAppTypes = self.dictionary[@"clientAppTypes"];

    if ([clientAppTypes isKindOfClass:[NSArray class]]){
        for (id tempConditionalAccessClientApp in clientAppTypes){
            [clientAppTypesResult addObject:tempConditionalAccessClientApp];
        }
    }

    _clientAppTypes = clientAppTypesResult;
        
    }
    return _clientAppTypes;
}

- (void) setClientAppTypes: (NSArray*) val
{
    _clientAppTypes = val;
    self.dictionary[@"clientAppTypes"] = val;
}

- (MSGraphConditionalAccessLocations*) locations
{
    if(!_locations){
        _locations = [[MSGraphConditionalAccessLocations alloc] initWithDictionary: self.dictionary[@"locations"]];
    }
    return _locations;
}

- (void) setLocations: (MSGraphConditionalAccessLocations*) val
{
    _locations = val;
    self.dictionary[@"locations"] = val;
}

- (MSGraphConditionalAccessPlatforms*) platforms
{
    if(!_platforms){
        _platforms = [[MSGraphConditionalAccessPlatforms alloc] initWithDictionary: self.dictionary[@"platforms"]];
    }
    return _platforms;
}

- (void) setPlatforms: (MSGraphConditionalAccessPlatforms*) val
{
    _platforms = val;
    self.dictionary[@"platforms"] = val;
}

- (NSArray*) signInRiskLevels
{
    if(!_signInRiskLevels){
        
    NSMutableArray *signInRiskLevelsResult = [NSMutableArray array];
    NSArray *signInRiskLevels = self.dictionary[@"signInRiskLevels"];

    if ([signInRiskLevels isKindOfClass:[NSArray class]]){
        for (id tempRiskLevel in signInRiskLevels){
            [signInRiskLevelsResult addObject:tempRiskLevel];
        }
    }

    _signInRiskLevels = signInRiskLevelsResult;
        
    }
    return _signInRiskLevels;
}

- (void) setSignInRiskLevels: (NSArray*) val
{
    _signInRiskLevels = val;
    self.dictionary[@"signInRiskLevels"] = val;
}

- (MSGraphConditionalAccessUsers*) users
{
    if(!_users){
        _users = [[MSGraphConditionalAccessUsers alloc] initWithDictionary: self.dictionary[@"users"]];
    }
    return _users;
}

- (void) setUsers: (MSGraphConditionalAccessUsers*) val
{
    _users = val;
    self.dictionary[@"users"] = val;
}

@end
