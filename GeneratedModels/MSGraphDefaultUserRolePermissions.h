// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDefaultUserRolePermissions : MSObject

@property (nonatomic, setter=setAllowedToCreateApps:, getter=allowedToCreateApps) BOOL allowedToCreateApps;
@property (nonatomic, setter=setAllowedToCreateSecurityGroups:, getter=allowedToCreateSecurityGroups) BOOL allowedToCreateSecurityGroups;
@property (nonatomic, setter=setAllowedToReadOtherUsers:, getter=allowedToReadOtherUsers) BOOL allowedToReadOtherUsers;
@property (nullable, nonatomic, setter=setPermissionGrantPoliciesAssigned:, getter=permissionGrantPoliciesAssigned) NSArray* permissionGrantPoliciesAssigned;

@end
