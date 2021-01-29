// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphApplication()
{
    NSArray* _addIns;
    MSGraphApiApplication* _api;
    NSString* _appId;
    NSString* _applicationTemplateId;
    NSArray* _appRoles;
    NSDate* _createdDateTime;
    NSString* _applicationDescription;
    NSString* _displayName;
    NSString* _groupMembershipClaims;
    NSArray* _identifierUris;
    MSGraphInformationalUrl* _info;
    BOOL _isDeviceOnlyAuthSupported;
    BOOL _isFallbackPublicClient;
    NSArray* _keyCredentials;
    NSString* _notes;
    BOOL _oauth2RequirePostResponse;
    MSGraphOptionalClaims* _optionalClaims;
    MSGraphParentalControlSettings* _parentalControlSettings;
    NSArray* _passwordCredentials;
    MSGraphPublicClientApplication* _publicClient;
    NSString* _publisherDomain;
    NSArray* _requiredResourceAccess;
    NSString* _signInAudience;
    MSGraphSpaApplication* _spa;
    NSArray* _tags;
    NSString* _tokenEncryptionKeyId;
    MSGraphWebApplication* _web;
    MSGraphDirectoryObject* _createdOnBehalfOf;
    NSArray* _extensionProperties;
    NSArray* _homeRealmDiscoveryPolicies;
    NSArray* _owners;
    NSArray* _tokenIssuancePolicies;
    NSArray* _tokenLifetimePolicies;
}
@end

@implementation MSGraphApplication

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.application";
    }
    return self;
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

- (MSGraphApiApplication*) api
{
    if(!_api){
        _api = [[MSGraphApiApplication alloc] initWithDictionary: self.dictionary[@"api"]];
    }
    return _api;
}

- (void) setApi: (MSGraphApiApplication*) val
{
    _api = val;
    self.dictionary[@"api"] = val;
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

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSString*) applicationDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setApplicationDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
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

- (NSString*) groupMembershipClaims
{
    if([[NSNull null] isEqual:self.dictionary[@"groupMembershipClaims"]])
    {
        return nil;
    }   
    return self.dictionary[@"groupMembershipClaims"];
}

- (void) setGroupMembershipClaims: (NSString*) val
{
    self.dictionary[@"groupMembershipClaims"] = val;
}

- (NSArray*) identifierUris
{
    return self.dictionary[@"identifierUris"];
}

- (void) setIdentifierUris: (NSArray*) val
{
    self.dictionary[@"identifierUris"] = val;
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

- (BOOL) isDeviceOnlyAuthSupported
{
    _isDeviceOnlyAuthSupported = [self.dictionary[@"isDeviceOnlyAuthSupported"] boolValue];
    return _isDeviceOnlyAuthSupported;
}

- (void) setIsDeviceOnlyAuthSupported: (BOOL) val
{
    _isDeviceOnlyAuthSupported = val;
    self.dictionary[@"isDeviceOnlyAuthSupported"] = @(val);
}

- (BOOL) isFallbackPublicClient
{
    _isFallbackPublicClient = [self.dictionary[@"isFallbackPublicClient"] boolValue];
    return _isFallbackPublicClient;
}

- (void) setIsFallbackPublicClient: (BOOL) val
{
    _isFallbackPublicClient = val;
    self.dictionary[@"isFallbackPublicClient"] = @(val);
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

- (BOOL) oauth2RequirePostResponse
{
    _oauth2RequirePostResponse = [self.dictionary[@"oauth2RequirePostResponse"] boolValue];
    return _oauth2RequirePostResponse;
}

- (void) setOauth2RequirePostResponse: (BOOL) val
{
    _oauth2RequirePostResponse = val;
    self.dictionary[@"oauth2RequirePostResponse"] = @(val);
}

- (MSGraphOptionalClaims*) optionalClaims
{
    if(!_optionalClaims){
        _optionalClaims = [[MSGraphOptionalClaims alloc] initWithDictionary: self.dictionary[@"optionalClaims"]];
    }
    return _optionalClaims;
}

- (void) setOptionalClaims: (MSGraphOptionalClaims*) val
{
    _optionalClaims = val;
    self.dictionary[@"optionalClaims"] = val;
}

- (MSGraphParentalControlSettings*) parentalControlSettings
{
    if(!_parentalControlSettings){
        _parentalControlSettings = [[MSGraphParentalControlSettings alloc] initWithDictionary: self.dictionary[@"parentalControlSettings"]];
    }
    return _parentalControlSettings;
}

- (void) setParentalControlSettings: (MSGraphParentalControlSettings*) val
{
    _parentalControlSettings = val;
    self.dictionary[@"parentalControlSettings"] = val;
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

- (MSGraphPublicClientApplication*) publicClient
{
    if(!_publicClient){
        _publicClient = [[MSGraphPublicClientApplication alloc] initWithDictionary: self.dictionary[@"publicClient"]];
    }
    return _publicClient;
}

- (void) setPublicClient: (MSGraphPublicClientApplication*) val
{
    _publicClient = val;
    self.dictionary[@"publicClient"] = val;
}

- (NSString*) publisherDomain
{
    if([[NSNull null] isEqual:self.dictionary[@"publisherDomain"]])
    {
        return nil;
    }   
    return self.dictionary[@"publisherDomain"];
}

- (void) setPublisherDomain: (NSString*) val
{
    self.dictionary[@"publisherDomain"] = val;
}

- (NSArray*) requiredResourceAccess
{
    if(!_requiredResourceAccess){
        
    NSMutableArray *requiredResourceAccessResult = [NSMutableArray array];
    NSArray *requiredResourceAccess = self.dictionary[@"requiredResourceAccess"];

    if ([requiredResourceAccess isKindOfClass:[NSArray class]]){
        for (id tempRequiredResourceAccess in requiredResourceAccess){
            [requiredResourceAccessResult addObject:tempRequiredResourceAccess];
        }
    }

    _requiredResourceAccess = requiredResourceAccessResult;
        
    }
    return _requiredResourceAccess;
}

- (void) setRequiredResourceAccess: (NSArray*) val
{
    _requiredResourceAccess = val;
    self.dictionary[@"requiredResourceAccess"] = val;
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

- (MSGraphSpaApplication*) spa
{
    if(!_spa){
        _spa = [[MSGraphSpaApplication alloc] initWithDictionary: self.dictionary[@"spa"]];
    }
    return _spa;
}

- (void) setSpa: (MSGraphSpaApplication*) val
{
    _spa = val;
    self.dictionary[@"spa"] = val;
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

- (MSGraphWebApplication*) web
{
    if(!_web){
        _web = [[MSGraphWebApplication alloc] initWithDictionary: self.dictionary[@"web"]];
    }
    return _web;
}

- (void) setWeb: (MSGraphWebApplication*) val
{
    _web = val;
    self.dictionary[@"web"] = val;
}

- (MSGraphDirectoryObject*) createdOnBehalfOf
{
    if(!_createdOnBehalfOf){
        _createdOnBehalfOf = [[MSGraphDirectoryObject alloc] initWithDictionary: self.dictionary[@"createdOnBehalfOf"]];
    }
    return _createdOnBehalfOf;
}

- (void) setCreatedOnBehalfOf: (MSGraphDirectoryObject*) val
{
    _createdOnBehalfOf = val;
    self.dictionary[@"createdOnBehalfOf"] = val;
}

- (NSArray*) extensionProperties
{
    if(!_extensionProperties){
        
    NSMutableArray *extensionPropertiesResult = [NSMutableArray array];
    NSArray *extensionProperties = self.dictionary[@"extensionProperties"];

    if ([extensionProperties isKindOfClass:[NSArray class]]){
        for (id tempExtensionProperty in extensionProperties){
            [extensionPropertiesResult addObject:tempExtensionProperty];
        }
    }

    _extensionProperties = extensionPropertiesResult;
        
    }
    return _extensionProperties;
}

- (void) setExtensionProperties: (NSArray*) val
{
    _extensionProperties = val;
    self.dictionary[@"extensionProperties"] = val;
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


@end
