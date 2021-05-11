// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuthorizationPolicy()
{
    BOOL _allowedToSignUpEmailBasedSubscriptions;
    BOOL _allowedToUseSSPR;
    BOOL _allowEmailVerifiedUsersToJoinOrganization;
    MSGraphAllowInvitesFrom* _allowInvitesFrom;
    BOOL _blockMsolPowerShell;
    MSGraphDefaultUserRolePermissions* _defaultUserRolePermissions;
    NSString* _guestUserRoleId;
}
@end

@implementation MSGraphAuthorizationPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.authorizationPolicy";
    }
    return self;
}
- (BOOL) allowedToSignUpEmailBasedSubscriptions
{
    _allowedToSignUpEmailBasedSubscriptions = [self.dictionary[@"allowedToSignUpEmailBasedSubscriptions"] boolValue];
    return _allowedToSignUpEmailBasedSubscriptions;
}

- (void) setAllowedToSignUpEmailBasedSubscriptions: (BOOL) val
{
    _allowedToSignUpEmailBasedSubscriptions = val;
    self.dictionary[@"allowedToSignUpEmailBasedSubscriptions"] = @(val);
}

- (BOOL) allowedToUseSSPR
{
    _allowedToUseSSPR = [self.dictionary[@"allowedToUseSSPR"] boolValue];
    return _allowedToUseSSPR;
}

- (void) setAllowedToUseSSPR: (BOOL) val
{
    _allowedToUseSSPR = val;
    self.dictionary[@"allowedToUseSSPR"] = @(val);
}

- (BOOL) allowEmailVerifiedUsersToJoinOrganization
{
    _allowEmailVerifiedUsersToJoinOrganization = [self.dictionary[@"allowEmailVerifiedUsersToJoinOrganization"] boolValue];
    return _allowEmailVerifiedUsersToJoinOrganization;
}

- (void) setAllowEmailVerifiedUsersToJoinOrganization: (BOOL) val
{
    _allowEmailVerifiedUsersToJoinOrganization = val;
    self.dictionary[@"allowEmailVerifiedUsersToJoinOrganization"] = @(val);
}

- (MSGraphAllowInvitesFrom*) allowInvitesFrom
{
    if(!_allowInvitesFrom){
        _allowInvitesFrom = [self.dictionary[@"allowInvitesFrom"] toMSGraphAllowInvitesFrom];
    }
    return _allowInvitesFrom;
}

- (void) setAllowInvitesFrom: (MSGraphAllowInvitesFrom*) val
{
    _allowInvitesFrom = val;
    self.dictionary[@"allowInvitesFrom"] = val;
}

- (BOOL) blockMsolPowerShell
{
    _blockMsolPowerShell = [self.dictionary[@"blockMsolPowerShell"] boolValue];
    return _blockMsolPowerShell;
}

- (void) setBlockMsolPowerShell: (BOOL) val
{
    _blockMsolPowerShell = val;
    self.dictionary[@"blockMsolPowerShell"] = @(val);
}

- (MSGraphDefaultUserRolePermissions*) defaultUserRolePermissions
{
    if(!_defaultUserRolePermissions){
        _defaultUserRolePermissions = [[MSGraphDefaultUserRolePermissions alloc] initWithDictionary: self.dictionary[@"defaultUserRolePermissions"]];
    }
    return _defaultUserRolePermissions;
}

- (void) setDefaultUserRolePermissions: (MSGraphDefaultUserRolePermissions*) val
{
    _defaultUserRolePermissions = val;
    self.dictionary[@"defaultUserRolePermissions"] = val;
}

- (NSString*) guestUserRoleId
{
    if([[NSNull null] isEqual:self.dictionary[@"guestUserRoleId"]])
    {
        return nil;
    }   
    return self.dictionary[@"guestUserRoleId"];
}

- (void) setGuestUserRoleId: (NSString*) val
{
    self.dictionary[@"guestUserRoleId"] = val;
}


@end
