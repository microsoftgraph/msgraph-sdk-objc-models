// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentity; 


#import "MSGraphEntity.h"

@interface MSGraphScopedRoleMembership : MSGraphEntity

  @property (nonnull, nonatomic, setter=setAdministrativeUnitId:, getter=administrativeUnitId) NSString* administrativeUnitId;
    @property (nonnull, nonatomic, setter=setRoleId:, getter=roleId) NSString* roleId;
    @property (nonnull, nonatomic, setter=setRoleMemberInfo:, getter=roleMemberInfo) MSGraphIdentity* roleMemberInfo;
  
@end
