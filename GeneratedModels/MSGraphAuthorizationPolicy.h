// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDefaultUserRolePermissions; 
#import "MSGraphAllowInvitesFrom.h"


#import "MSGraphPolicyBase.h"

@interface MSGraphAuthorizationPolicy : MSGraphPolicyBase

  @property (nonatomic, setter=setAllowedToSignUpEmailBasedSubscriptions:, getter=allowedToSignUpEmailBasedSubscriptions) BOOL allowedToSignUpEmailBasedSubscriptions;
    @property (nonatomic, setter=setAllowedToUseSSPR:, getter=allowedToUseSSPR) BOOL allowedToUseSSPR;
    @property (nonatomic, setter=setAllowEmailVerifiedUsersToJoinOrganization:, getter=allowEmailVerifiedUsersToJoinOrganization) BOOL allowEmailVerifiedUsersToJoinOrganization;
    @property (nullable, nonatomic, setter=setAllowInvitesFrom:, getter=allowInvitesFrom) MSGraphAllowInvitesFrom* allowInvitesFrom;
    @property (nonatomic, setter=setBlockMsolPowerShell:, getter=blockMsolPowerShell) BOOL blockMsolPowerShell;
    @property (nonnull, nonatomic, setter=setDefaultUserRolePermissions:, getter=defaultUserRolePermissions) MSGraphDefaultUserRolePermissions* defaultUserRolePermissions;
    @property (nullable, nonatomic, setter=setGuestUserRoleId:, getter=guestUserRoleId) NSString* guestUserRoleId;
  
@end
