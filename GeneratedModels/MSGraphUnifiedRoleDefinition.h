// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUnifiedRolePermission; 


#import "MSGraphEntity.h"

@interface MSGraphUnifiedRoleDefinition : MSGraphEntity

  @property (nullable, nonatomic, setter=setUnifiedRoleDefinitionDescription:, getter=unifiedRoleDefinitionDescription) NSString* unifiedRoleDefinitionDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsBuiltIn:, getter=isBuiltIn) BOOL isBuiltIn;
    @property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
    @property (nonnull, nonatomic, setter=setResourceScopes:, getter=resourceScopes) NSArray* resourceScopes;
    @property (nonnull, nonatomic, setter=setRolePermissions:, getter=rolePermissions) NSArray* rolePermissions;
    @property (nullable, nonatomic, setter=setTemplateId:, getter=templateId) NSString* templateId;
    @property (nullable, nonatomic, setter=setVersion:, getter=version) NSString* version;
    @property (nullable, nonatomic, setter=setInheritsPermissionsFrom:, getter=inheritsPermissionsFrom) NSArray* inheritsPermissionsFrom;
  
@end
