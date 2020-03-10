// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAddIn, MSGraphAppRole, MSGraphInformationalUrl, MSGraphKeyCredential, MSGraphPermissionScope, MSGraphPasswordCredential, MSGraphAppRoleAssignment, MSGraphEndpoint, MSGraphOAuth2PermissionGrant, MSGraphDirectoryObject; 


#import "MSGraphDirectoryObject.h"

@interface MSGraphServicePrincipal : MSGraphDirectoryObject

  @property (nonatomic, setter=setAccountEnabled:, getter=accountEnabled) BOOL accountEnabled;
    @property (nonnull, nonatomic, setter=setAddIns:, getter=addIns) NSArray* addIns;
    @property (nonnull, nonatomic, setter=setAlternativeNames:, getter=alternativeNames) NSArray* alternativeNames;
    @property (nullable, nonatomic, setter=setAppDisplayName:, getter=appDisplayName) NSString* appDisplayName;
    @property (nullable, nonatomic, setter=setAppId:, getter=appId) NSString* appId;
    @property (nullable, nonatomic, setter=setAppOwnerOrganizationId:, getter=appOwnerOrganizationId) NSString* appOwnerOrganizationId;
    @property (nonatomic, setter=setAppRoleAssignmentRequired:, getter=appRoleAssignmentRequired) BOOL appRoleAssignmentRequired;
    @property (nonnull, nonatomic, setter=setAppRoles:, getter=appRoles) NSArray* appRoles;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setHomepage:, getter=homepage) NSString* homepage;
    @property (nullable, nonatomic, setter=setInfo:, getter=info) MSGraphInformationalUrl* info;
    @property (nonnull, nonatomic, setter=setKeyCredentials:, getter=keyCredentials) NSArray* keyCredentials;
    @property (nullable, nonatomic, setter=setLogoutUrl:, getter=logoutUrl) NSString* logoutUrl;
    @property (nonnull, nonatomic, setter=setOauth2PermissionScopes:, getter=oauth2PermissionScopes) NSArray* oauth2PermissionScopes;
    @property (nonnull, nonatomic, setter=setPasswordCredentials:, getter=passwordCredentials) NSArray* passwordCredentials;
    @property (nonnull, nonatomic, setter=setReplyUrls:, getter=replyUrls) NSArray* replyUrls;
    @property (nonnull, nonatomic, setter=setServicePrincipalNames:, getter=servicePrincipalNames) NSArray* servicePrincipalNames;
    @property (nullable, nonatomic, setter=setServicePrincipalType:, getter=servicePrincipalType) NSString* servicePrincipalType;
    @property (nonnull, nonatomic, setter=setTags:, getter=tags) NSArray* tags;
    @property (nullable, nonatomic, setter=setTokenEncryptionKeyId:, getter=tokenEncryptionKeyId) NSString* tokenEncryptionKeyId;
    @property (nullable, nonatomic, setter=setAppRoleAssignedTo:, getter=appRoleAssignedTo) NSArray* appRoleAssignedTo;
    @property (nullable, nonatomic, setter=setAppRoleAssignments:, getter=appRoleAssignments) NSArray* appRoleAssignments;
    @property (nullable, nonatomic, setter=setEndpoints:, getter=endpoints) NSArray* endpoints;
    @property (nullable, nonatomic, setter=setOauth2PermissionGrants:, getter=oauth2PermissionGrants) NSArray* oauth2PermissionGrants;
    @property (nullable, nonatomic, setter=setMemberOf:, getter=memberOf) NSArray* memberOf;
    @property (nullable, nonatomic, setter=setTransitiveMemberOf:, getter=transitiveMemberOf) NSArray* transitiveMemberOf;
    @property (nullable, nonatomic, setter=setCreatedObjects:, getter=createdObjects) NSArray* createdObjects;
    @property (nullable, nonatomic, setter=setOwners:, getter=owners) NSArray* owners;
    @property (nullable, nonatomic, setter=setOwnedObjects:, getter=ownedObjects) NSArray* ownedObjects;
  
@end
