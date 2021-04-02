// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAppScope, MSGraphDirectoryObject, MSGraphUnifiedRoleDefinition; 


#import "MSGraphEntity.h"

@interface MSGraphUnifiedRoleAssignment : MSGraphEntity

  @property (nullable, nonatomic, setter=setAppScopeId:, getter=appScopeId) NSString* appScopeId;
    @property (nullable, nonatomic, setter=setCondition:, getter=condition) NSString* condition;
    @property (nullable, nonatomic, setter=setDirectoryScopeId:, getter=directoryScopeId) NSString* directoryScopeId;
    @property (nullable, nonatomic, setter=setPrincipalId:, getter=principalId) NSString* principalId;
    @property (nullable, nonatomic, setter=setRoleDefinitionId:, getter=roleDefinitionId) NSString* roleDefinitionId;
    @property (nullable, nonatomic, setter=setAppScope:, getter=appScope) MSGraphAppScope* appScope;
    @property (nullable, nonatomic, setter=setDirectoryScope:, getter=directoryScope) MSGraphDirectoryObject* directoryScope;
    @property (nullable, nonatomic, setter=setPrincipal:, getter=principal) MSGraphDirectoryObject* principal;
    @property (nullable, nonatomic, setter=setRoleDefinition:, getter=roleDefinition) MSGraphUnifiedRoleDefinition* roleDefinition;
  
@end
