// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAssignedLabel, MSGraphAssignedLicense, MSGraphLicenseProcessingState, MSGraphOnPremisesProvisioningError, MSGraphAppRoleAssignment, MSGraphDirectoryObject, MSGraphResourceSpecificPermissionGrant, MSGraphGroupSetting, MSGraphCalendar, MSGraphEvent, MSGraphConversation, MSGraphProfilePhoto, MSGraphConversationThread, MSGraphDrive, MSGraphSite, MSGraphExtension, MSGraphGroupLifecyclePolicy, MSGraphPlannerGroup, MSGraphOnenote, MSGraphTeam; 


#import "MSGraphDirectoryObject.h"

@interface MSGraphGroup : MSGraphDirectoryObject

  @property (nullable, nonatomic, setter=setAssignedLabels:, getter=assignedLabels) NSArray* assignedLabels;
    @property (nullable, nonatomic, setter=setAssignedLicenses:, getter=assignedLicenses) NSArray* assignedLicenses;
    @property (nullable, nonatomic, setter=setClassification:, getter=classification) NSString* classification;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setGroupDescription:, getter=groupDescription) NSString* groupDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nonnull, nonatomic, setter=setGroupTypes:, getter=groupTypes) NSArray* groupTypes;
    @property (nonatomic, setter=setHasMembersWithLicenseErrors:, getter=hasMembersWithLicenseErrors) BOOL hasMembersWithLicenseErrors;
    @property (nullable, nonatomic, setter=setLicenseProcessingState:, getter=licenseProcessingState) MSGraphLicenseProcessingState* licenseProcessingState;
    @property (nullable, nonatomic, setter=setMail:, getter=mail) NSString* mail;
    @property (nonatomic, setter=setMailEnabled:, getter=mailEnabled) BOOL mailEnabled;
    @property (nullable, nonatomic, setter=setMailNickname:, getter=mailNickname) NSString* mailNickname;
    @property (nullable, nonatomic, setter=setMembershipRule:, getter=membershipRule) NSString* membershipRule;
    @property (nullable, nonatomic, setter=setMembershipRuleProcessingState:, getter=membershipRuleProcessingState) NSString* membershipRuleProcessingState;
    @property (nullable, nonatomic, setter=setOnPremisesDomainName:, getter=onPremisesDomainName) NSString* onPremisesDomainName;
    @property (nullable, nonatomic, setter=setOnPremisesLastSyncDateTime:, getter=onPremisesLastSyncDateTime) NSDate* onPremisesLastSyncDateTime;
    @property (nullable, nonatomic, setter=setOnPremisesNetBiosName:, getter=onPremisesNetBiosName) NSString* onPremisesNetBiosName;
    @property (nullable, nonatomic, setter=setOnPremisesProvisioningErrors:, getter=onPremisesProvisioningErrors) NSArray* onPremisesProvisioningErrors;
    @property (nullable, nonatomic, setter=setOnPremisesSamAccountName:, getter=onPremisesSamAccountName) NSString* onPremisesSamAccountName;
    @property (nullable, nonatomic, setter=setOnPremisesSecurityIdentifier:, getter=onPremisesSecurityIdentifier) NSString* onPremisesSecurityIdentifier;
    @property (nonatomic, setter=setOnPremisesSyncEnabled:, getter=onPremisesSyncEnabled) BOOL onPremisesSyncEnabled;
    @property (nullable, nonatomic, setter=setPreferredDataLocation:, getter=preferredDataLocation) NSString* preferredDataLocation;
    @property (nullable, nonatomic, setter=setPreferredLanguage:, getter=preferredLanguage) NSString* preferredLanguage;
    @property (nonnull, nonatomic, setter=setProxyAddresses:, getter=proxyAddresses) NSArray* proxyAddresses;
    @property (nullable, nonatomic, setter=setRenewedDateTime:, getter=renewedDateTime) NSDate* renewedDateTime;
    @property (nonatomic, setter=setSecurityEnabled:, getter=securityEnabled) BOOL securityEnabled;
    @property (nullable, nonatomic, setter=setSecurityIdentifier:, getter=securityIdentifier) NSString* securityIdentifier;
    @property (nullable, nonatomic, setter=setTheme:, getter=theme) NSString* theme;
    @property (nullable, nonatomic, setter=setVisibility:, getter=visibility) NSString* visibility;
    @property (nonatomic, setter=setAllowExternalSenders:, getter=allowExternalSenders) BOOL allowExternalSenders;
    @property (nonatomic, setter=setAutoSubscribeNewMembers:, getter=autoSubscribeNewMembers) BOOL autoSubscribeNewMembers;
    @property (nonatomic, setter=setHideFromAddressLists:, getter=hideFromAddressLists) BOOL hideFromAddressLists;
    @property (nonatomic, setter=setHideFromOutlookClients:, getter=hideFromOutlookClients) BOOL hideFromOutlookClients;
    @property (nonatomic, setter=setIsSubscribedByMail:, getter=isSubscribedByMail) BOOL isSubscribedByMail;
    @property (nonatomic, setter=setUnseenCount:, getter=unseenCount) int32_t unseenCount;
    @property (nonatomic, setter=setIsArchived:, getter=isArchived) BOOL isArchived;
    @property (nullable, nonatomic, setter=setAppRoleAssignments:, getter=appRoleAssignments) NSArray* appRoleAssignments;
    @property (nullable, nonatomic, setter=setCreatedOnBehalfOf:, getter=createdOnBehalfOf) MSGraphDirectoryObject* createdOnBehalfOf;
    @property (nullable, nonatomic, setter=setMemberOf:, getter=memberOf) NSArray* memberOf;
    @property (nullable, nonatomic, setter=setMembers:, getter=members) NSArray* members;
    @property (nullable, nonatomic, setter=setMembersWithLicenseErrors:, getter=membersWithLicenseErrors) NSArray* membersWithLicenseErrors;
    @property (nullable, nonatomic, setter=setOwners:, getter=owners) NSArray* owners;
    @property (nullable, nonatomic, setter=setPermissionGrants:, getter=permissionGrants) NSArray* permissionGrants;
    @property (nullable, nonatomic, setter=setSettings:, getter=settings) NSArray* settings;
    @property (nullable, nonatomic, setter=setTransitiveMemberOf:, getter=transitiveMemberOf) NSArray* transitiveMemberOf;
    @property (nullable, nonatomic, setter=setTransitiveMembers:, getter=transitiveMembers) NSArray* transitiveMembers;
    @property (nullable, nonatomic, setter=setAcceptedSenders:, getter=acceptedSenders) NSArray* acceptedSenders;
    @property (nullable, nonatomic, setter=setCalendar:, getter=calendar) MSGraphCalendar* calendar;
    @property (nullable, nonatomic, setter=setCalendarView:, getter=calendarView) NSArray* calendarView;
    @property (nullable, nonatomic, setter=setConversations:, getter=conversations) NSArray* conversations;
    @property (nullable, nonatomic, setter=setEvents:, getter=events) NSArray* events;
    @property (nullable, nonatomic, setter=setPhoto:, getter=photo) MSGraphProfilePhoto* photo;
    @property (nullable, nonatomic, setter=setPhotos:, getter=photos) NSArray* photos;
    @property (nullable, nonatomic, setter=setRejectedSenders:, getter=rejectedSenders) NSArray* rejectedSenders;
    @property (nullable, nonatomic, setter=setThreads:, getter=threads) NSArray* threads;
    @property (nullable, nonatomic, setter=setDrive:, getter=drive) MSGraphDrive* drive;
    @property (nullable, nonatomic, setter=setDrives:, getter=drives) NSArray* drives;
    @property (nullable, nonatomic, setter=setSites:, getter=sites) NSArray* sites;
    @property (nullable, nonatomic, setter=setExtensions:, getter=extensions) NSArray* extensions;
    @property (nullable, nonatomic, setter=setGroupLifecyclePolicies:, getter=groupLifecyclePolicies) NSArray* groupLifecyclePolicies;
    @property (nullable, nonatomic, setter=setPlanner:, getter=planner) MSGraphPlannerGroup* planner;
    @property (nullable, nonatomic, setter=setOnenote:, getter=onenote) MSGraphOnenote* onenote;
    @property (nullable, nonatomic, setter=setTeam:, getter=team) MSGraphTeam* team;
  
@end
