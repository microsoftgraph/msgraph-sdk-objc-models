// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAddIn, MSGraphApiApplication, MSGraphAppRole, MSGraphInformationalUrl, MSGraphKeyCredential, MSGraphOptionalClaims, MSGraphParentalControlSettings, MSGraphPasswordCredential, MSGraphPublicClientApplication, MSGraphRequiredResourceAccess, MSGraphSpaApplication, MSGraphVerifiedPublisher, MSGraphWebApplication, MSGraphDirectoryObject, MSGraphExtensionProperty, MSGraphHomeRealmDiscoveryPolicy, MSGraphTokenIssuancePolicy, MSGraphTokenLifetimePolicy; 


#import "MSGraphDirectoryObject.h"

@interface MSGraphApplication : MSGraphDirectoryObject

  @property (nonnull, nonatomic, setter=setAddIns:, getter=addIns) NSArray* addIns;
    @property (nullable, nonatomic, setter=setApi:, getter=api) MSGraphApiApplication* api;
    @property (nullable, nonatomic, setter=setAppId:, getter=appId) NSString* appId;
    @property (nullable, nonatomic, setter=setApplicationTemplateId:, getter=applicationTemplateId) NSString* applicationTemplateId;
    @property (nonnull, nonatomic, setter=setAppRoles:, getter=appRoles) NSArray* appRoles;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setApplicationDescription:, getter=applicationDescription) NSString* applicationDescription;
    @property (nullable, nonatomic, setter=setDisabledByMicrosoftStatus:, getter=disabledByMicrosoftStatus) NSString* disabledByMicrosoftStatus;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setGroupMembershipClaims:, getter=groupMembershipClaims) NSString* groupMembershipClaims;
    @property (nonnull, nonatomic, setter=setIdentifierUris:, getter=identifierUris) NSArray* identifierUris;
    @property (nullable, nonatomic, setter=setInfo:, getter=info) MSGraphInformationalUrl* info;
    @property (nonatomic, setter=setIsDeviceOnlyAuthSupported:, getter=isDeviceOnlyAuthSupported) BOOL isDeviceOnlyAuthSupported;
    @property (nonatomic, setter=setIsFallbackPublicClient:, getter=isFallbackPublicClient) BOOL isFallbackPublicClient;
    @property (nonnull, nonatomic, setter=setKeyCredentials:, getter=keyCredentials) NSArray* keyCredentials;
    @property (nullable, nonatomic, setter=setNotes:, getter=notes) NSString* notes;
    @property (nonatomic, setter=setOauth2RequirePostResponse:, getter=oauth2RequirePostResponse) BOOL oauth2RequirePostResponse;
    @property (nullable, nonatomic, setter=setOptionalClaims:, getter=optionalClaims) MSGraphOptionalClaims* optionalClaims;
    @property (nullable, nonatomic, setter=setParentalControlSettings:, getter=parentalControlSettings) MSGraphParentalControlSettings* parentalControlSettings;
    @property (nonnull, nonatomic, setter=setPasswordCredentials:, getter=passwordCredentials) NSArray* passwordCredentials;
    @property (nullable, nonatomic, setter=setPublicClient:, getter=publicClient) MSGraphPublicClientApplication* publicClient;
    @property (nullable, nonatomic, setter=setPublisherDomain:, getter=publisherDomain) NSString* publisherDomain;
    @property (nonnull, nonatomic, setter=setRequiredResourceAccess:, getter=requiredResourceAccess) NSArray* requiredResourceAccess;
    @property (nullable, nonatomic, setter=setSignInAudience:, getter=signInAudience) NSString* signInAudience;
    @property (nullable, nonatomic, setter=setSpa:, getter=spa) MSGraphSpaApplication* spa;
    @property (nonnull, nonatomic, setter=setTags:, getter=tags) NSArray* tags;
    @property (nullable, nonatomic, setter=setTokenEncryptionKeyId:, getter=tokenEncryptionKeyId) NSString* tokenEncryptionKeyId;
    @property (nullable, nonatomic, setter=setVerifiedPublisher:, getter=verifiedPublisher) MSGraphVerifiedPublisher* verifiedPublisher;
    @property (nullable, nonatomic, setter=setWeb:, getter=web) MSGraphWebApplication* web;
    @property (nullable, nonatomic, setter=setCreatedOnBehalfOf:, getter=createdOnBehalfOf) MSGraphDirectoryObject* createdOnBehalfOf;
    @property (nullable, nonatomic, setter=setExtensionProperties:, getter=extensionProperties) NSArray* extensionProperties;
    @property (nullable, nonatomic, setter=setHomeRealmDiscoveryPolicies:, getter=homeRealmDiscoveryPolicies) NSArray* homeRealmDiscoveryPolicies;
    @property (nullable, nonatomic, setter=setOwners:, getter=owners) NSArray* owners;
    @property (nullable, nonatomic, setter=setTokenIssuancePolicies:, getter=tokenIssuancePolicies) NSArray* tokenIssuancePolicies;
    @property (nullable, nonatomic, setter=setTokenLifetimePolicies:, getter=tokenLifetimePolicies) NSArray* tokenLifetimePolicies;
  
@end
