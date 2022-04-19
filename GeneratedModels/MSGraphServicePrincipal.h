// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAddIn, MSGraphAppRole, MSGraphInformationalUrl, MSGraphKeyCredential, MSGraphPermissionScope, MSGraphPasswordCredential, MSGraphResourceSpecificPermission, MSGraphSamlSingleSignOnSettings, MSGraphAppRoleAssignment, MSGraphClaimsMappingPolicy, MSGraphDirectoryObject, MSGraphDelegatedPermissionClassification, MSGraphEndpoint, MSGraphHomeRealmDiscoveryPolicy, MSGraphOAuth2PermissionGrant, MSGraphTokenIssuancePolicy, MSGraphTokenLifetimePolicy; 


#import "MSGraphDirectoryObject.h"

@interface MSGraphServicePrincipal : MSGraphDirectoryObject

  @property (nonatomic, setter=setAccountEnabled:, getter=accountEnabled) BOOL accountEnabled;
    @property (nonnull, nonatomic, setter=setAddIns:, getter=addIns) NSArray* addIns;
    @property (nonnull, nonatomic, setter=setAlternativeNames:, getter=alternativeNames) NSArray* alternativeNames;
    @property (nullable, nonatomic, setter=setAppDescription:, getter=appDescription) NSString* appDescription;
    @property (nullable, nonatomic, setter=setAppDisplayName:, getter=appDisplayName) NSString* appDisplayName;
    @property (nullable, nonatomic, setter=setAppId:, getter=appId) NSString* appId;
    @property (nullable, nonatomic, setter=setApplicationTemplateId:, getter=applicationTemplateId) NSString* applicationTemplateId;
    @property (nullable, nonatomic, setter=setAppOwnerOrganizationId:, getter=appOwnerOrganizationId) NSString* appOwnerOrganizationId;
    @property (nonatomic, setter=setAppRoleAssignmentRequired:, getter=appRoleAssignmentRequired) BOOL appRoleAssignmentRequired;
    @property (nonnull, nonatomic, setter=setAppRoles:, getter=appRoles) NSArray* appRoles;
    @property (nullable, nonatomic, setter=setServicePrincipalDescription:, getter=servicePrincipalDescription) NSString* servicePrincipalDescription;
    @property (nullable, nonatomic, setter=setDisabledByMicrosoftStatus:, getter=disabledByMicrosoftStatus) NSString* disabledByMicrosoftStatus;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setHomepage:, getter=homepage) NSString* homepage;
    @property (nullable, nonatomic, setter=setInfo:, getter=info) MSGraphInformationalUrl* info;
    @property (nonnull, nonatomic, setter=setKeyCredentials:, getter=keyCredentials) NSArray* keyCredentials;
    @property (nullable, nonatomic, setter=setLoginUrl:, getter=loginUrl) NSString* loginUrl;
    @property (nullable, nonatomic, setter=setLogoutUrl:, getter=logoutUrl) NSString* logoutUrl;
    @property (nullable, nonatomic, setter=setNotes:, getter=notes) NSString* notes;
    @property (nonnull, nonatomic, setter=setNotificationEmailAddresses:, getter=notificationEmailAddresses) NSArray* notificationEmailAddresses;
    @property (nonnull, nonatomic, setter=setOauth2PermissionScopes:, getter=oauth2PermissionScopes) NSArray* oauth2PermissionScopes;
    @property (nonnull, nonatomic, setter=setPasswordCredentials:, getter=passwordCredentials) NSArray* passwordCredentials;
    @property (nullable, nonatomic, setter=setPreferredSingleSignOnMode:, getter=preferredSingleSignOnMode) NSString* preferredSingleSignOnMode;
    @property (nullable, nonatomic, setter=setPreferredTokenSigningKeyThumbprint:, getter=preferredTokenSigningKeyThumbprint) NSString* preferredTokenSigningKeyThumbprint;
    @property (nonnull, nonatomic, setter=setReplyUrls:, getter=replyUrls) NSArray* replyUrls;
    @property (nonnull, nonatomic, setter=setResourceSpecificApplicationPermissions:, getter=resourceSpecificApplicationPermissions) NSArray* resourceSpecificApplicationPermissions;
    @property (nullable, nonatomic, setter=setSamlSingleSignOnSettings:, getter=samlSingleSignOnSettings) MSGraphSamlSingleSignOnSettings* samlSingleSignOnSettings;
    @property (nonnull, nonatomic, setter=setServicePrincipalNames:, getter=servicePrincipalNames) NSArray* servicePrincipalNames;
    @property (nullable, nonatomic, setter=setServicePrincipalType:, getter=servicePrincipalType) NSString* servicePrincipalType;
    @property (nullable, nonatomic, setter=setSignInAudience:, getter=signInAudience) NSString* signInAudience;
    @property (nonnull, nonatomic, setter=setTags:, getter=tags) NSArray* tags;
    @property (nullable, nonatomic, setter=setTokenEncryptionKeyId:, getter=tokenEncryptionKeyId) NSString* tokenEncryptionKeyId;
    @property (nullable, nonatomic, setter=setAppRoleAssignedTo:, getter=appRoleAssignedTo) NSArray* appRoleAssignedTo;
    @property (nullable, nonatomic, setter=setAppRoleAssignments:, getter=appRoleAssignments) NSArray* appRoleAssignments;
    @property (nullable, nonatomic, setter=setClaimsMappingPolicies:, getter=claimsMappingPolicies) NSArray* claimsMappingPolicies;
    @property (nullable, nonatomic, setter=setCreatedObjects:, getter=createdObjects) NSArray* createdObjects;
    @property (nullable, nonatomic, setter=setDelegatedPermissionClassifications:, getter=delegatedPermissionClassifications) NSArray* delegatedPermissionClassifications;
    @property (nullable, nonatomic, setter=setEndpoints:, getter=endpoints) NSArray* endpoints;
    @property (nullable, nonatomic, setter=setHomeRealmDiscoveryPolicies:, getter=homeRealmDiscoveryPolicies) NSArray* homeRealmDiscoveryPolicies;
    @property (nullable, nonatomic, setter=setMemberOf:, getter=memberOf) NSArray* memberOf;
    @property (nullable, nonatomic, setter=setOauth2PermissionGrants:, getter=oauth2PermissionGrants) NSArray* oauth2PermissionGrants;
    @property (nullable, nonatomic, setter=setOwnedObjects:, getter=ownedObjects) NSArray* ownedObjects;
    @property (nullable, nonatomic, setter=setOwners:, getter=owners) NSArray* owners;
    @property (nullable, nonatomic, setter=setTokenIssuancePolicies:, getter=tokenIssuancePolicies) NSArray* tokenIssuancePolicies;
    @property (nullable, nonatomic, setter=setTokenLifetimePolicies:, getter=tokenLifetimePolicies) NSArray* tokenLifetimePolicies;
    @property (nullable, nonatomic, setter=setTransitiveMemberOf:, getter=transitiveMemberOf) NSArray* transitiveMemberOf;
  
@end
