// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDirectoryObject, MSGraphScopedRoleMembership, MSGraphExtension; 


#import "MSGraphDirectoryObject.h"

@interface MSGraphAdministrativeUnit : MSGraphDirectoryObject

  @property (nullable, nonatomic, setter=setAdministrativeUnitDescription:, getter=administrativeUnitDescription) NSString* administrativeUnitDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setVisibility:, getter=visibility) NSString* visibility;
    @property (nullable, nonatomic, setter=setMembers:, getter=members) NSArray* members;
    @property (nullable, nonatomic, setter=setScopedRoleMembers:, getter=scopedRoleMembers) NSArray* scopedRoleMembers;
    @property (nullable, nonatomic, setter=setExtensions:, getter=extensions) NSArray* extensions;
  
@end
