// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEmailAddress; 
#import "MSGraphCalendarRoleType.h"


#import "MSGraphEntity.h"

@interface MSGraphCalendarPermission : MSGraphEntity

  @property (nullable, nonatomic, setter=setEmailAddress:, getter=emailAddress) MSGraphEmailAddress* emailAddress;
    @property (nonatomic, setter=setIsRemovable:, getter=isRemovable) BOOL isRemovable;
    @property (nonatomic, setter=setIsInsideOrganization:, getter=isInsideOrganization) BOOL isInsideOrganization;
    @property (nullable, nonatomic, setter=setRole:, getter=role) MSGraphCalendarRoleType* role;
    @property (nullable, nonatomic, setter=setAllowedRoles:, getter=allowedRoles) NSArray* allowedRoles;
  
@end
