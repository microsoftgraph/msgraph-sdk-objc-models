// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphServicePrincipal()
{
    BOOL _accountEnabled;
    NSArray* _addIns;
    NSArray* _alternativeNames;
    NSString* _appDescription;
    NSString* _appDisplayName;
    NSString* _appId;
    NSString* _applicationTemplateId;
    NSString* _appOwnerOrganizationId;
    BOOL _appRoleAssignmentRequired;
    NSArray* _appRoles;
    NSString* _servicePrincipalDescription;
    NSString* _disabledByMicrosoftStatus;
    NSString* _displayName;
    NSString* _homepage;
    MSGraphInformationalUrl* _info;
    NSArray* _keyCredentials;
    NSString* _loginUrl;
    NSString* _logoutUrl;
    NSString* _notes;
    NSArray* _notificationEmailAddresses;
    NSArray* _oauth2PermissionScopes;
    NSArray* _passwordCredentials;
    NSString* _preferredSingleSignOnMode;
    NSString* _preferredTokenSigningKeyThumbprint;
    NSArray* _replyUrls;
    NSArray* _resourceSpecificApplicationPermissions;
    MSGraphSamlSingleSignOnSettings* _samlSingleSignOnSettings;
    NSArray* _servicePrincipalNames;
    NSString* _servicePrincipalType;
    NSString* _signInAudience;
    NSArray* _tags;
    NSString* _tokenEncryptionKeyId;
    NSArray* _appRoleAssignedTo;
    NSArray* _appRoleAssignments;
    NSArray* _claimsMappingPolicies;
    NSArray* _createdObjects;
    NSArray* _delegatedPermissionClassifications;
    NSArray* _endpoints;
    NSArray* _homeRealmDiscoveryPolicies;
    NSArray* _memberOf;
    NSArray* _oauth2PermissionGrants;
    NSArray* _ownedObjects;
    NSArray* _owners;
    NSArray* _tokenIssuancePolicies;
    NSArray* _tokenLifetimePolicies;
    NSArray* _transitiveMemberOf;
}
@end

@implementation MSGraphServicePrincipal

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.servicePrincipal";
    }
    return self;
}
- (BOOL) accountEnabled
{
    _accountEnabled = [self.dictionary[@"accountEnabled"] boolValue];
    return _accountEnabled;
}

- (void) setAccountEnabled: (BOOL) val
{
    _accountEnabled = val;
    self.dictionary[@"accountEnabled"] = @(val);
}

- (NSArray*) addIns
{
    if(!_addIns){
        
    NSMutableArray *addInsResult = [NSMutableArray array];
    NSArray *addIns = self.dictionary[@"addIns"];

    if ([addIns isKindOfClass:[NSArray class]]){
        for (id tempAddIn in addIns){
            [addInsResult addObject:tempAddIn];
        }
    }

    _addIns = addInsResult;
        
    }
    return _addIns;
}

- (void) setAddIns: (NSArray*) val
{
    _addIns = val;
    self.dictionary[@"addIns"] = val;
}

- (NSArray*) alternativeNames
{
    return self.dictionary[@"alternativeNames"];
}

- (void) setAlternativeNames: (NSArray*) val
{
    self.dictionary[@"alternativeNames"] = val;
}

- (NSString*) appDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"appDescription"]])
    {
        return nil;
    }   
    return self.dictionary[@"appDescription"];
}

- (void) setAppDescription: (NSString*) val
{
    self.dictionary[@"appDescription"] = val;
}

- (NSString*) appDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"appDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"appDisplayName"];
}

- (void) setAppDisplayName: (NSString*) val
{
    self.dictionary[@"appDisplayName"] = val;
}

- (NSString*) appId
{
    if([[NSNull null] isEqual:self.dictionary[@"appId"]])
    {
        return nil;
    }   
    return self.dictionary[@"appId"];
}

- (void) setAppId: (NSString*) val
{
    self.dictionary[@"appId"] = val;
}

- (NSString*) applicationTemplateId
{
    if([[NSNull null] isEqual:self.dictionary[@"applicationTemplateId"]])
    {
        return nil;
    }   
    return self.dictionary[@"applicationTemplateId"];
}

- (void) setApplicationTemplateId: (NSString*) val
{
    self.dictionary[@"applicationTemplateId"] = val;
}

- (NSString*) appOwnerOrganizationId
{
    if([[NSNull null] isEqual:self.dictionary[@"appOwnerOrganizationId"]])
    {
        return nil;
    }   
    return self.dictionary[@"appOwnerOrganizationId"];
}

- (void) setAppOwnerOrganizationId: (NSString*) val
{
    self.dictionary[@"appOwnerOrganizationId"] = val;
}

- (BOOL) appRoleAssignmentRequired
{
    _appRoleAssignmentRequired = [self.dictionary[@"appRoleAssignmentRequired"] boolValue];
    return _appRoleAssignmentRequired;
}

- (void) setAppRoleAssignmentRequired: (BOOL) val
{
    _appRoleAssignmentRequired = val;
    self.dictionary[@"appRoleAssignmentRequired"] = @(val);
}

- (NSArray*) appRoles
{
    if(!_appRoles){
        
    NSMutableArray *appRolesResult = [NSMutableArray array];
    NSArray *appRoles = self.dictionary[@"appRoles"];

    if ([appRoles isKindOfClass:[NSArray class]]){
        for (id tempAppRole in appRoles){
            [appRolesResult addObject:tempAppRole];
        }
    }

    _appRoles = appRolesResult;
        
    }
    return _appRoles;
}

- (void) setAppRoles: (NSArray*) val
{
    _appRoles = val;
    self.dictionary[@"appRoles"] = val;
}

- (NSString*) servicePrincipalDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setServicePrincipalDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) disabledByMicrosoftStatus
{
    if([[NSNull null] isEqual:self.dictionary[@"disabledByMicrosoftStatus"]])
    {
        return nil;
    }   
    return self.dictionary[@"disabledByMicrosoftStatus"];
}

- (void) setDisabledByMicrosoftStatus: (NSString*) val
{
    self.dictionary[@"disabledByMicrosoftStatus"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) homepage
{
    if([[NSNull null] isEqual:self.dictionary[@"homepage"]])
    {
        return nil;
    }   
    return self.dictionary[@"homepage"];
}

- (void) setHomepage: (NSString*) val
{
    self.dictionary[@"homepage"] = val;
}

- (MSGraphInformationalUrl*) info
{
    if(!_info){
        _info = [[MSGraphInformationalUrl alloc] initWithDictionary: self.dictionary[@"info"]];
    }
    return _info;
}

- (void) setInfo: (MSGraphInformationalUrl*) val
{
    _info = val;
    self.dictionary[@"info"] = val;
}

- (NSArray*) keyCredentials
{
    if(!_keyCredentials){
        
    NSMutableArray *keyCredentialsResult = [NSMutableArray array];
    NSArray *keyCredentials = self.dictionary[@"keyCredentials"];

    if ([keyCredentials isKindOfClass:[NSArray class]]){
        for (id tempKeyCredential in keyCredentials){
            [keyCredentialsResult addObject:tempKeyCredential];
        }
    }

    _keyCredentials = keyCredentialsResult;
        
    }
    return _keyCredentials;
}

- (void) setKeyCredentials: (NSArray*) val
{
    _keyCredentials = val;
    self.dictionary[@"keyCredentials"] = val;
}

- (NSString*) loginUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"loginUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"loginUrl"];
}

- (void) setLoginUrl: (NSString*) val
{
    self.dictionary[@"loginUrl"] = val;
}

- (NSString*) logoutUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"logoutUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"logoutUrl"];
}

- (void) setLogoutUrl: (NSString*) val
{
    self.dictionary[@"logoutUrl"] = val;
}

- (NSString*) notes
{
    if([[NSNull null] isEqual:self.dictionary[@"notes"]])
    {
        return nil;
    }   
    return self.dictionary[@"notes"];
}

- (void) setNotes: (NSString*) val
{
    self.dictionary[@"notes"] = val;
}

- (NSArray*) notificationEmailAddresses
{
    return self.dictionary[@"notificationEmailAddresses"];
}

- (void) setNotificationEmailAddresses: (NSArray*) val
{
    self.dictionary[@"notificationEmailAddresses"] = val;
}

- (NSArray*) oauth2PermissionScopes
{
    if(!_oauth2PermissionScopes){
        
    NSMutableArray *oauth2PermissionScopesResult = [NSMutableArray array];
    NSArray *oauth2PermissionScopes = self.dictionary[@"oauth2PermissionScopes"];

    if ([oauth2PermissionScopes isKindOfClass:[NSArray class]]){
        for (id tempPermissionScope in oauth2PermissionScopes){
            [oauth2PermissionScopesResult addObject:tempPermissionScope];
        }
    }

    _oauth2PermissionScopes = oauth2PermissionScopesResult;
        
    }
    return _oauth2PermissionScopes;
}

- (void) setOauth2PermissionScopes: (NSArray*) val
{
    _oauth2PermissionScopes = val;
    self.dictionary[@"oauth2PermissionScopes"] = val;
}

- (NSArray*) passwordCredentials
{
    if(!_passwordCredentials){
        
    NSMutableArray *passwordCredentialsResult = [NSMutableArray array];
    NSArray *passwordCredentials = self.dictionary[@"passwordCredentials"];

    if ([passwordCredentials isKindOfClass:[NSArray class]]){
        for (id tempPasswordCredential in passwordCredentials){
            [passwordCredentialsResult addObject:tempPasswordCredential];
        }
    }

    _passwordCredentials = passwordCredentialsResult;
        
    }
    return _passwordCredentials;
}

- (void) setPasswordCredentials: (NSArray*) val
{
    _passwordCredentials = val;
    self.dictionary[@"passwordCredentials"] = val;
}

- (NSString*) preferredSingleSignOnMode
{
    if([[NSNull null] isEqual:self.dictionary[@"preferredSingleSignOnMode"]])
    {
        return nil;
    }   
    return self.dictionary[@"preferredSingleSignOnMode"];
}

- (void) setPreferredSingleSignOnMode: (NSString*) val
{
    self.dictionary[@"preferredSingleSignOnMode"] = val;
}

- (NSString*) preferredTokenSigningKeyThumbprint
{
    if([[NSNull null] isEqual:self.dictionary[@"preferredTokenSigningKeyThumbprint"]])
    {
        return nil;
    }   
    return self.dictionary[@"preferredTokenSigningKeyThumbprint"];
}

- (void) setPreferredTokenSigningKeyThumbprint: (NSString*) val
{
    self.dictionary[@"preferredTokenSigningKeyThumbprint"] = val;
}

- (NSArray*) replyUrls
{
    return self.dictionary[@"replyUrls"];
}

- (void) setReplyUrls: (NSArray*) val
{
    self.dictionary[@"replyUrls"] = val;
}

- (NSArray*) resourceSpecificApplicationPermissions
{
    if(!_resourceSpecificApplicationPermissions){
        
    NSMutableArray *resourceSpecificApplicationPermissionsResult = [NSMutableArray array];
    NSArray *resourceSpecificApplicationPermissions = self.dictionary[@"resourceSpecificApplicationPermissions"];

    if ([resourceSpecificApplicationPermissions isKindOfClass:[NSArray class]]){
        for (id tempResourceSpecificPermission in resourceSpecificApplicationPermissions){
            [resourceSpecificApplicationPermissionsResult addObject:tempResourceSpecificPermission];
        }
    }

    _resourceSpecificApplicationPermissions = resourceSpecificApplicationPermissionsResult;
        
    }
    return _resourceSpecificApplicationPermissions;
}

- (void) setResourceSpecificApplicationPermissions: (NSArray*) val
{
    _resourceSpecificApplicationPermissions = val;
    self.dictionary[@"resourceSpecificApplicationPermissions"] = val;
}

- (MSGraphSamlSingleSignOnSettings*) samlSingleSignOnSettings
{
    if(!_samlSingleSignOnSettings){
        _samlSingleSignOnSettings = [[MSGraphSamlSingleSignOnSettings alloc] initWithDictionary: self.dictionary[@"samlSingleSignOnSettings"]];
    }
    return _samlSingleSignOnSettings;
}

- (void) setSamlSingleSignOnSettings: (MSGraphSamlSingleSignOnSettings*) val
{
    _samlSingleSignOnSettings = val;
    self.dictionary[@"samlSingleSignOnSettings"] = val;
}

- (NSArray*) servicePrincipalNames
{
    return self.dictionary[@"servicePrincipalNames"];
}

- (void) setServicePrincipalNames: (NSArray*) val
{
    self.dictionary[@"servicePrincipalNames"] = val;
}

- (NSString*) servicePrincipalType
{
    if([[NSNull null] isEqual:self.dictionary[@"servicePrincipalType"]])
    {
        return nil;
    }   
    return self.dictionary[@"servicePrincipalType"];
}

- (void) setServicePrincipalType: (NSString*) val
{
    self.dictionary[@"servicePrincipalType"] = val;
}

- (NSString*) signInAudience
{
    if([[NSNull null] isEqual:self.dictionary[@"signInAudience"]])
    {
        return nil;
    }   
    return self.dictionary[@"signInAudience"];
}

- (void) setSignInAudience: (NSString*) val
{
    self.dictionary[@"signInAudience"] = val;
}

- (NSArray*) tags
{
    return self.dictionary[@"tags"];
}

- (void) setTags: (NSArray*) val
{
    self.dictionary[@"tags"] = val;
}

- (NSString*) tokenEncryptionKeyId
{
    if([[NSNull null] isEqual:self.dictionary[@"tokenEncryptionKeyId"]])
    {
        return nil;
    }   
    return self.dictionary[@"tokenEncryptionKeyId"];
}

- (void) setTokenEncryptionKeyId: (NSString*) val
{
    self.dictionary[@"tokenEncryptionKeyId"] = val;
}

- (NSArray*) appRoleAssignedTo
{
    if(!_appRoleAssignedTo){
        
    NSMutableArray *appRoleAssignedToResult = [NSMutableArray array];
    NSArray *appRoleAssignedTo = self.dictionary[@"appRoleAssignedTo"];

    if ([appRoleAssignedTo isKindOfClass:[NSArray class]]){
        for (id tempAppRoleAssignment in appRoleAssignedTo){
            [appRoleAssignedToResult addObject:tempAppRoleAssignment];
        }
    }

    _appRoleAssignedTo = appRoleAssignedToResult;
        
    }
    return _appRoleAssignedTo;
}

- (void) setAppRoleAssignedTo: (NSArray*) val
{
    _appRoleAssignedTo = val;
    self.dictionary[@"appRoleAssignedTo"] = val;
}

- (NSArray*) appRoleAssignments
{
    if(!_appRoleAssignments){
        
    NSMutableArray *appRoleAssignmentsResult = [NSMutableArray array];
    NSArray *appRoleAssignments = self.dictionary[@"appRoleAssignments"];

    if ([appRoleAssignments isKindOfClass:[NSArray class]]){
        for (id tempAppRoleAssignment in appRoleAssignments){
            [appRoleAssignmentsResult addObject:tempAppRoleAssignment];
        }
    }

    _appRoleAssignments = appRoleAssignmentsResult;
        
    }
    return _appRoleAssignments;
}

- (void) setAppRoleAssignments: (NSArray*) val
{
    _appRoleAssignments = val;
    self.dictionary[@"appRoleAssignments"] = val;
}

- (NSArray*) claimsMappingPolicies
{
    if(!_claimsMappingPolicies){
        
    NSMutableArray *claimsMappingPoliciesResult = [NSMutableArray array];
    NSArray *claimsMappingPolicies = self.dictionary[@"claimsMappingPolicies"];

    if ([claimsMappingPolicies isKindOfClass:[NSArray class]]){
        for (id tempClaimsMappingPolicy in claimsMappingPolicies){
            [claimsMappingPoliciesResult addObject:tempClaimsMappingPolicy];
        }
    }

    _claimsMappingPolicies = claimsMappingPoliciesResult;
        
    }
    return _claimsMappingPolicies;
}

- (void) setClaimsMappingPolicies: (NSArray*) val
{
    _claimsMappingPolicies = val;
    self.dictionary[@"claimsMappingPolicies"] = val;
}

- (NSArray*) createdObjects
{
    if(!_createdObjects){
        
    NSMutableArray *createdObjectsResult = [NSMutableArray array];
    NSArray *createdObjects = self.dictionary[@"createdObjects"];

    if ([createdObjects isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in createdObjects){
            [createdObjectsResult addObject:tempDirectoryObject];
        }
    }

    _createdObjects = createdObjectsResult;
        
    }
    return _createdObjects;
}

- (void) setCreatedObjects: (NSArray*) val
{
    _createdObjects = val;
    self.dictionary[@"createdObjects"] = val;
}

- (NSArray*) delegatedPermissionClassifications
{
    if(!_delegatedPermissionClassifications){
        
    NSMutableArray *delegatedPermissionClassificationsResult = [NSMutableArray array];
    NSArray *delegatedPermissionClassifications = self.dictionary[@"delegatedPermissionClassifications"];

    if ([delegatedPermissionClassifications isKindOfClass:[NSArray class]]){
        for (id tempDelegatedPermissionClassification in delegatedPermissionClassifications){
            [delegatedPermissionClassificationsResult addObject:tempDelegatedPermissionClassification];
        }
    }

    _delegatedPermissionClassifications = delegatedPermissionClassificationsResult;
        
    }
    return _delegatedPermissionClassifications;
}

- (void) setDelegatedPermissionClassifications: (NSArray*) val
{
    _delegatedPermissionClassifications = val;
    self.dictionary[@"delegatedPermissionClassifications"] = val;
}

- (NSArray*) endpoints
{
    if(!_endpoints){
        
    NSMutableArray *endpointsResult = [NSMutableArray array];
    NSArray *endpoints = self.dictionary[@"endpoints"];

    if ([endpoints isKindOfClass:[NSArray class]]){
        for (id tempEndpoint in endpoints){
            [endpointsResult addObject:tempEndpoint];
        }
    }

    _endpoints = endpointsResult;
        
    }
    return _endpoints;
}

- (void) setEndpoints: (NSArray*) val
{
    _endpoints = val;
    self.dictionary[@"endpoints"] = val;
}

- (NSArray*) homeRealmDiscoveryPolicies
{
    if(!_homeRealmDiscoveryPolicies){
        
    NSMutableArray *homeRealmDiscoveryPoliciesResult = [NSMutableArray array];
    NSArray *homeRealmDiscoveryPolicies = self.dictionary[@"homeRealmDiscoveryPolicies"];

    if ([homeRealmDiscoveryPolicies isKindOfClass:[NSArray class]]){
        for (id tempHomeRealmDiscoveryPolicy in homeRealmDiscoveryPolicies){
            [homeRealmDiscoveryPoliciesResult addObject:tempHomeRealmDiscoveryPolicy];
        }
    }

    _homeRealmDiscoveryPolicies = homeRealmDiscoveryPoliciesResult;
        
    }
    return _homeRealmDiscoveryPolicies;
}

- (void) setHomeRealmDiscoveryPolicies: (NSArray*) val
{
    _homeRealmDiscoveryPolicies = val;
    self.dictionary[@"homeRealmDiscoveryPolicies"] = val;
}

- (NSArray*) memberOf
{
    if(!_memberOf){
        
    NSMutableArray *memberOfResult = [NSMutableArray array];
    NSArray *memberOf = self.dictionary[@"memberOf"];

    if ([memberOf isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in memberOf){
            [memberOfResult addObject:tempDirectoryObject];
        }
    }

    _memberOf = memberOfResult;
        
    }
    return _memberOf;
}

- (void) setMemberOf: (NSArray*) val
{
    _memberOf = val;
    self.dictionary[@"memberOf"] = val;
}

- (NSArray*) oauth2PermissionGrants
{
    if(!_oauth2PermissionGrants){
        
    NSMutableArray *oauth2PermissionGrantsResult = [NSMutableArray array];
    NSArray *oauth2PermissionGrants = self.dictionary[@"oauth2PermissionGrants"];

    if ([oauth2PermissionGrants isKindOfClass:[NSArray class]]){
        for (id tempOAuth2PermissionGrant in oauth2PermissionGrants){
            [oauth2PermissionGrantsResult addObject:tempOAuth2PermissionGrant];
        }
    }

    _oauth2PermissionGrants = oauth2PermissionGrantsResult;
        
    }
    return _oauth2PermissionGrants;
}

- (void) setOauth2PermissionGrants: (NSArray*) val
{
    _oauth2PermissionGrants = val;
    self.dictionary[@"oauth2PermissionGrants"] = val;
}

- (NSArray*) ownedObjects
{
    if(!_ownedObjects){
        
    NSMutableArray *ownedObjectsResult = [NSMutableArray array];
    NSArray *ownedObjects = self.dictionary[@"ownedObjects"];

    if ([ownedObjects isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in ownedObjects){
            [ownedObjectsResult addObject:tempDirectoryObject];
        }
    }

    _ownedObjects = ownedObjectsResult;
        
    }
    return _ownedObjects;
}

- (void) setOwnedObjects: (NSArray*) val
{
    _ownedObjects = val;
    self.dictionary[@"ownedObjects"] = val;
}

- (NSArray*) owners
{
    if(!_owners){
        
    NSMutableArray *ownersResult = [NSMutableArray array];
    NSArray *owners = self.dictionary[@"owners"];

    if ([owners isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in owners){
            [ownersResult addObject:tempDirectoryObject];
        }
    }

    _owners = ownersResult;
        
    }
    return _owners;
}

- (void) setOwners: (NSArray*) val
{
    _owners = val;
    self.dictionary[@"owners"] = val;
}

- (NSArray*) tokenIssuancePolicies
{
    if(!_tokenIssuancePolicies){
        
    NSMutableArray *tokenIssuancePoliciesResult = [NSMutableArray array];
    NSArray *tokenIssuancePolicies = self.dictionary[@"tokenIssuancePolicies"];

    if ([tokenIssuancePolicies isKindOfClass:[NSArray class]]){
        for (id tempTokenIssuancePolicy in tokenIssuancePolicies){
            [tokenIssuancePoliciesResult addObject:tempTokenIssuancePolicy];
        }
    }

    _tokenIssuancePolicies = tokenIssuancePoliciesResult;
        
    }
    return _tokenIssuancePolicies;
}

- (void) setTokenIssuancePolicies: (NSArray*) val
{
    _tokenIssuancePolicies = val;
    self.dictionary[@"tokenIssuancePolicies"] = val;
}

- (NSArray*) tokenLifetimePolicies
{
    if(!_tokenLifetimePolicies){
        
    NSMutableArray *tokenLifetimePoliciesResult = [NSMutableArray array];
    NSArray *tokenLifetimePolicies = self.dictionary[@"tokenLifetimePolicies"];

    if ([tokenLifetimePolicies isKindOfClass:[NSArray class]]){
        for (id tempTokenLifetimePolicy in tokenLifetimePolicies){
            [tokenLifetimePoliciesResult addObject:tempTokenLifetimePolicy];
        }
    }

    _tokenLifetimePolicies = tokenLifetimePoliciesResult;
        
    }
    return _tokenLifetimePolicies;
}

- (void) setTokenLifetimePolicies: (NSArray*) val
{
    _tokenLifetimePolicies = val;
    self.dictionary[@"tokenLifetimePolicies"] = val;
}

- (NSArray*) transitiveMemberOf
{
    if(!_transitiveMemberOf){
        
    NSMutableArray *transitiveMemberOfResult = [NSMutableArray array];
    NSArray *transitiveMemberOf = self.dictionary[@"transitiveMemberOf"];

    if ([transitiveMemberOf isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in transitiveMemberOf){
            [transitiveMemberOfResult addObject:tempDirectoryObject];
        }
    }

    _transitiveMemberOf = transitiveMemberOfResult;
        
    }
    return _transitiveMemberOf;
}

- (void) setTransitiveMemberOf: (NSArray*) val
{
    _transitiveMemberOf = val;
    self.dictionary[@"transitiveMemberOf"] = val;
}


@end
