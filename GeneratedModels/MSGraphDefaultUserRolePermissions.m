// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDefaultUserRolePermissions()
{
    BOOL _allowedToCreateApps;
    BOOL _allowedToCreateSecurityGroups;
    BOOL _allowedToReadOtherUsers;
    NSArray* _permissionGrantPoliciesAssigned;
}
@end

@implementation MSGraphDefaultUserRolePermissions

- (BOOL) allowedToCreateApps
{
    _allowedToCreateApps = [self.dictionary[@"allowedToCreateApps"] boolValue];
    return _allowedToCreateApps;
}

- (void) setAllowedToCreateApps: (BOOL) val
{
    _allowedToCreateApps = val;
    self.dictionary[@"allowedToCreateApps"] = @(val);
}

- (BOOL) allowedToCreateSecurityGroups
{
    _allowedToCreateSecurityGroups = [self.dictionary[@"allowedToCreateSecurityGroups"] boolValue];
    return _allowedToCreateSecurityGroups;
}

- (void) setAllowedToCreateSecurityGroups: (BOOL) val
{
    _allowedToCreateSecurityGroups = val;
    self.dictionary[@"allowedToCreateSecurityGroups"] = @(val);
}

- (BOOL) allowedToReadOtherUsers
{
    _allowedToReadOtherUsers = [self.dictionary[@"allowedToReadOtherUsers"] boolValue];
    return _allowedToReadOtherUsers;
}

- (void) setAllowedToReadOtherUsers: (BOOL) val
{
    _allowedToReadOtherUsers = val;
    self.dictionary[@"allowedToReadOtherUsers"] = @(val);
}

- (NSArray*) permissionGrantPoliciesAssigned
{
    if([[NSNull null] isEqual:self.dictionary[@"permissionGrantPoliciesAssigned"]])
    {
        return nil;
    }   
    return self.dictionary[@"permissionGrantPoliciesAssigned"];
}

- (void) setPermissionGrantPoliciesAssigned: (NSArray*) val
{
    self.dictionary[@"permissionGrantPoliciesAssigned"] = val;
}

@end
