// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessConditionSet()
{
    MSGraphConditionalAccessApplications* _applications;
    MSGraphConditionalAccessClientApplications* _clientApplications;
    NSArray* _clientAppTypes;
    MSGraphConditionalAccessDevices* _devices;
    MSGraphConditionalAccessLocations* _locations;
    MSGraphConditionalAccessPlatforms* _platforms;
    NSArray* _signInRiskLevels;
    NSArray* _userRiskLevels;
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

- (MSGraphConditionalAccessClientApplications*) clientApplications
{
    if(!_clientApplications){
        _clientApplications = [[MSGraphConditionalAccessClientApplications alloc] initWithDictionary: self.dictionary[@"clientApplications"]];
    }
    return _clientApplications;
}

- (void) setClientApplications: (MSGraphConditionalAccessClientApplications*) val
{
    _clientApplications = val;
    self.dictionary[@"clientApplications"] = val;
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

- (MSGraphConditionalAccessDevices*) devices
{
    if(!_devices){
        _devices = [[MSGraphConditionalAccessDevices alloc] initWithDictionary: self.dictionary[@"devices"]];
    }
    return _devices;
}

- (void) setDevices: (MSGraphConditionalAccessDevices*) val
{
    _devices = val;
    self.dictionary[@"devices"] = val;
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

- (NSArray*) userRiskLevels
{
    if(!_userRiskLevels){
        
    NSMutableArray *userRiskLevelsResult = [NSMutableArray array];
    NSArray *userRiskLevels = self.dictionary[@"userRiskLevels"];

    if ([userRiskLevels isKindOfClass:[NSArray class]]){
        for (id tempRiskLevel in userRiskLevels){
            [userRiskLevelsResult addObject:tempRiskLevel];
        }
    }

    _userRiskLevels = userRiskLevelsResult;
        
    }
    return _userRiskLevels;
}

- (void) setUserRiskLevels: (NSArray*) val
{
    _userRiskLevels = val;
    self.dictionary[@"userRiskLevels"] = val;
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
