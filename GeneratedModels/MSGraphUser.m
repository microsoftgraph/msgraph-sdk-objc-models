// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUser()
{
    BOOL _accountEnabled;
    NSString* _ageGroup;
    NSArray* _assignedLicenses;
    NSArray* _assignedPlans;
    NSArray* _businessPhones;
    NSString* _city;
    NSString* _companyName;
    NSString* _consentProvidedForMinor;
    NSString* _country;
    NSDate* _createdDateTime;
    NSString* _creationType;
    NSString* _department;
    NSString* _displayName;
    NSString* _employeeId;
    NSString* _externalUserState;
    NSDate* _externalUserStateChangeDateTime;
    NSString* _faxNumber;
    NSString* _givenName;
    NSArray* _identities;
    NSArray* _imAddresses;
    BOOL _isResourceAccount;
    NSString* _jobTitle;
    NSDate* _lastPasswordChangeDateTime;
    NSString* _legalAgeGroupClassification;
    NSArray* _licenseAssignmentStates;
    NSString* _mail;
    NSString* _mailNickname;
    NSString* _mobilePhone;
    NSString* _officeLocation;
    NSString* _onPremisesDistinguishedName;
    NSString* _onPremisesDomainName;
    MSGraphOnPremisesExtensionAttributes* _onPremisesExtensionAttributes;
    NSString* _onPremisesImmutableId;
    NSDate* _onPremisesLastSyncDateTime;
    NSArray* _onPremisesProvisioningErrors;
    NSString* _onPremisesSamAccountName;
    NSString* _onPremisesSecurityIdentifier;
    BOOL _onPremisesSyncEnabled;
    NSString* _onPremisesUserPrincipalName;
    NSArray* _otherMails;
    NSString* _passwordPolicies;
    MSGraphPasswordProfile* _passwordProfile;
    NSString* _postalCode;
    NSString* _preferredLanguage;
    NSArray* _provisionedPlans;
    NSArray* _proxyAddresses;
    BOOL _showInAddressList;
    NSDate* _signInSessionsValidFromDateTime;
    NSString* _state;
    NSString* _streetAddress;
    NSString* _surname;
    NSString* _usageLocation;
    NSString* _userPrincipalName;
    NSString* _userType;
    MSGraphMailboxSettings* _mailboxSettings;
    int32_t _deviceEnrollmentLimit;
    NSString* _aboutMe;
    NSDate* _birthday;
    NSDate* _hireDate;
    NSArray* _interests;
    NSString* _mySite;
    NSArray* _pastProjects;
    NSString* _preferredName;
    NSArray* _responsibilities;
    NSArray* _schools;
    NSArray* _skills;
    NSArray* _appRoleAssignments;
    NSArray* _createdObjects;
    NSArray* _directReports;
    NSArray* _licenseDetails;
    MSGraphDirectoryObject* _manager;
    NSArray* _memberOf;
    NSArray* _oauth2PermissionGrants;
    NSArray* _ownedDevices;
    NSArray* _ownedObjects;
    NSArray* _registeredDevices;
    NSArray* _scopedRoleMemberOf;
    NSArray* _transitiveMemberOf;
    MSGraphCalendar* _calendar;
    NSArray* _calendarGroups;
    NSArray* _calendars;
    NSArray* _calendarView;
    NSArray* _contactFolders;
    NSArray* _contacts;
    NSArray* _events;
    MSGraphInferenceClassification* _inferenceClassification;
    NSArray* _mailFolders;
    NSArray* _messages;
    MSGraphOutlookUser* _outlook;
    NSArray* _people;
    MSGraphProfilePhoto* _photo;
    NSArray* _photos;
    MSGraphDrive* _drive;
    NSArray* _drives;
    NSArray* _followedSites;
    NSArray* _extensions;
    NSArray* _managedDevices;
    NSArray* _managedAppRegistrations;
    NSArray* _deviceManagementTroubleshootingEvents;
    MSGraphPlannerUser* _planner;
    MSGraphOfficeGraphInsights* _insights;
    MSGraphUserSettings* _settings;
    MSGraphOnenote* _onenote;
    NSArray* _activities;
    NSArray* _onlineMeetings;
    NSArray* _joinedTeams;
    MSGraphUserTeamwork* _teamwork;
}
@end

@implementation MSGraphUser

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.user";
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

- (NSString*) ageGroup
{
    if([[NSNull null] isEqual:self.dictionary[@"ageGroup"]])
    {
        return nil;
    }   
    return self.dictionary[@"ageGroup"];
}

- (void) setAgeGroup: (NSString*) val
{
    self.dictionary[@"ageGroup"] = val;
}

- (NSArray*) assignedLicenses
{
    if(!_assignedLicenses){
        
    NSMutableArray *assignedLicensesResult = [NSMutableArray array];
    NSArray *assignedLicenses = self.dictionary[@"assignedLicenses"];

    if ([assignedLicenses isKindOfClass:[NSArray class]]){
        for (id tempAssignedLicense in assignedLicenses){
            [assignedLicensesResult addObject:tempAssignedLicense];
        }
    }

    _assignedLicenses = assignedLicensesResult;
        
    }
    return _assignedLicenses;
}

- (void) setAssignedLicenses: (NSArray*) val
{
    _assignedLicenses = val;
    self.dictionary[@"assignedLicenses"] = val;
}

- (NSArray*) assignedPlans
{
    if(!_assignedPlans){
        
    NSMutableArray *assignedPlansResult = [NSMutableArray array];
    NSArray *assignedPlans = self.dictionary[@"assignedPlans"];

    if ([assignedPlans isKindOfClass:[NSArray class]]){
        for (id tempAssignedPlan in assignedPlans){
            [assignedPlansResult addObject:tempAssignedPlan];
        }
    }

    _assignedPlans = assignedPlansResult;
        
    }
    return _assignedPlans;
}

- (void) setAssignedPlans: (NSArray*) val
{
    _assignedPlans = val;
    self.dictionary[@"assignedPlans"] = val;
}

- (NSArray*) businessPhones
{
    return self.dictionary[@"businessPhones"];
}

- (void) setBusinessPhones: (NSArray*) val
{
    self.dictionary[@"businessPhones"] = val;
}

- (NSString*) city
{
    if([[NSNull null] isEqual:self.dictionary[@"city"]])
    {
        return nil;
    }   
    return self.dictionary[@"city"];
}

- (void) setCity: (NSString*) val
{
    self.dictionary[@"city"] = val;
}

- (NSString*) companyName
{
    if([[NSNull null] isEqual:self.dictionary[@"companyName"]])
    {
        return nil;
    }   
    return self.dictionary[@"companyName"];
}

- (void) setCompanyName: (NSString*) val
{
    self.dictionary[@"companyName"] = val;
}

- (NSString*) consentProvidedForMinor
{
    if([[NSNull null] isEqual:self.dictionary[@"consentProvidedForMinor"]])
    {
        return nil;
    }   
    return self.dictionary[@"consentProvidedForMinor"];
}

- (void) setConsentProvidedForMinor: (NSString*) val
{
    self.dictionary[@"consentProvidedForMinor"] = val;
}

- (NSString*) country
{
    if([[NSNull null] isEqual:self.dictionary[@"country"]])
    {
        return nil;
    }   
    return self.dictionary[@"country"];
}

- (void) setCountry: (NSString*) val
{
    self.dictionary[@"country"] = val;
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

- (NSString*) creationType
{
    if([[NSNull null] isEqual:self.dictionary[@"creationType"]])
    {
        return nil;
    }   
    return self.dictionary[@"creationType"];
}

- (void) setCreationType: (NSString*) val
{
    self.dictionary[@"creationType"] = val;
}

- (NSString*) department
{
    if([[NSNull null] isEqual:self.dictionary[@"department"]])
    {
        return nil;
    }   
    return self.dictionary[@"department"];
}

- (void) setDepartment: (NSString*) val
{
    self.dictionary[@"department"] = val;
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

- (NSString*) employeeId
{
    if([[NSNull null] isEqual:self.dictionary[@"employeeId"]])
    {
        return nil;
    }   
    return self.dictionary[@"employeeId"];
}

- (void) setEmployeeId: (NSString*) val
{
    self.dictionary[@"employeeId"] = val;
}

- (NSString*) externalUserState
{
    if([[NSNull null] isEqual:self.dictionary[@"externalUserState"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalUserState"];
}

- (void) setExternalUserState: (NSString*) val
{
    self.dictionary[@"externalUserState"] = val;
}

- (NSDate*) externalUserStateChangeDateTime
{
    if(!_externalUserStateChangeDateTime){
        _externalUserStateChangeDateTime = [NSDate ms_dateFromString: self.dictionary[@"externalUserStateChangeDateTime"]];
    }
    return _externalUserStateChangeDateTime;
}

- (void) setExternalUserStateChangeDateTime: (NSDate*) val
{
    _externalUserStateChangeDateTime = val;
    self.dictionary[@"externalUserStateChangeDateTime"] = [val ms_toString];
}

- (NSString*) faxNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"faxNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"faxNumber"];
}

- (void) setFaxNumber: (NSString*) val
{
    self.dictionary[@"faxNumber"] = val;
}

- (NSString*) givenName
{
    if([[NSNull null] isEqual:self.dictionary[@"givenName"]])
    {
        return nil;
    }   
    return self.dictionary[@"givenName"];
}

- (void) setGivenName: (NSString*) val
{
    self.dictionary[@"givenName"] = val;
}

- (NSArray*) identities
{
    if(!_identities){
        
    NSMutableArray *identitiesResult = [NSMutableArray array];
    NSArray *identities = self.dictionary[@"identities"];

    if ([identities isKindOfClass:[NSArray class]]){
        for (id tempObjectIdentity in identities){
            [identitiesResult addObject:tempObjectIdentity];
        }
    }

    _identities = identitiesResult;
        
    }
    return _identities;
}

- (void) setIdentities: (NSArray*) val
{
    _identities = val;
    self.dictionary[@"identities"] = val;
}

- (NSArray*) imAddresses
{
    if([[NSNull null] isEqual:self.dictionary[@"imAddresses"]])
    {
        return nil;
    }   
    return self.dictionary[@"imAddresses"];
}

- (void) setImAddresses: (NSArray*) val
{
    self.dictionary[@"imAddresses"] = val;
}

- (BOOL) isResourceAccount
{
    _isResourceAccount = [self.dictionary[@"isResourceAccount"] boolValue];
    return _isResourceAccount;
}

- (void) setIsResourceAccount: (BOOL) val
{
    _isResourceAccount = val;
    self.dictionary[@"isResourceAccount"] = @(val);
}

- (NSString*) jobTitle
{
    if([[NSNull null] isEqual:self.dictionary[@"jobTitle"]])
    {
        return nil;
    }   
    return self.dictionary[@"jobTitle"];
}

- (void) setJobTitle: (NSString*) val
{
    self.dictionary[@"jobTitle"] = val;
}

- (NSDate*) lastPasswordChangeDateTime
{
    if(!_lastPasswordChangeDateTime){
        _lastPasswordChangeDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastPasswordChangeDateTime"]];
    }
    return _lastPasswordChangeDateTime;
}

- (void) setLastPasswordChangeDateTime: (NSDate*) val
{
    _lastPasswordChangeDateTime = val;
    self.dictionary[@"lastPasswordChangeDateTime"] = [val ms_toString];
}

- (NSString*) legalAgeGroupClassification
{
    if([[NSNull null] isEqual:self.dictionary[@"legalAgeGroupClassification"]])
    {
        return nil;
    }   
    return self.dictionary[@"legalAgeGroupClassification"];
}

- (void) setLegalAgeGroupClassification: (NSString*) val
{
    self.dictionary[@"legalAgeGroupClassification"] = val;
}

- (NSArray*) licenseAssignmentStates
{
    if(!_licenseAssignmentStates){
        
    NSMutableArray *licenseAssignmentStatesResult = [NSMutableArray array];
    NSArray *licenseAssignmentStates = self.dictionary[@"licenseAssignmentStates"];

    if ([licenseAssignmentStates isKindOfClass:[NSArray class]]){
        for (id tempLicenseAssignmentState in licenseAssignmentStates){
            [licenseAssignmentStatesResult addObject:tempLicenseAssignmentState];
        }
    }

    _licenseAssignmentStates = licenseAssignmentStatesResult;
        
    }
    return _licenseAssignmentStates;
}

- (void) setLicenseAssignmentStates: (NSArray*) val
{
    _licenseAssignmentStates = val;
    self.dictionary[@"licenseAssignmentStates"] = val;
}

- (NSString*) mail
{
    if([[NSNull null] isEqual:self.dictionary[@"mail"]])
    {
        return nil;
    }   
    return self.dictionary[@"mail"];
}

- (void) setMail: (NSString*) val
{
    self.dictionary[@"mail"] = val;
}

- (NSString*) mailNickname
{
    if([[NSNull null] isEqual:self.dictionary[@"mailNickname"]])
    {
        return nil;
    }   
    return self.dictionary[@"mailNickname"];
}

- (void) setMailNickname: (NSString*) val
{
    self.dictionary[@"mailNickname"] = val;
}

- (NSString*) mobilePhone
{
    if([[NSNull null] isEqual:self.dictionary[@"mobilePhone"]])
    {
        return nil;
    }   
    return self.dictionary[@"mobilePhone"];
}

- (void) setMobilePhone: (NSString*) val
{
    self.dictionary[@"mobilePhone"] = val;
}

- (NSString*) officeLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"officeLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"officeLocation"];
}

- (void) setOfficeLocation: (NSString*) val
{
    self.dictionary[@"officeLocation"] = val;
}

- (NSString*) onPremisesDistinguishedName
{
    if([[NSNull null] isEqual:self.dictionary[@"onPremisesDistinguishedName"]])
    {
        return nil;
    }   
    return self.dictionary[@"onPremisesDistinguishedName"];
}

- (void) setOnPremisesDistinguishedName: (NSString*) val
{
    self.dictionary[@"onPremisesDistinguishedName"] = val;
}

- (NSString*) onPremisesDomainName
{
    if([[NSNull null] isEqual:self.dictionary[@"onPremisesDomainName"]])
    {
        return nil;
    }   
    return self.dictionary[@"onPremisesDomainName"];
}

- (void) setOnPremisesDomainName: (NSString*) val
{
    self.dictionary[@"onPremisesDomainName"] = val;
}

- (MSGraphOnPremisesExtensionAttributes*) onPremisesExtensionAttributes
{
    if(!_onPremisesExtensionAttributes){
        _onPremisesExtensionAttributes = [[MSGraphOnPremisesExtensionAttributes alloc] initWithDictionary: self.dictionary[@"onPremisesExtensionAttributes"]];
    }
    return _onPremisesExtensionAttributes;
}

- (void) setOnPremisesExtensionAttributes: (MSGraphOnPremisesExtensionAttributes*) val
{
    _onPremisesExtensionAttributes = val;
    self.dictionary[@"onPremisesExtensionAttributes"] = val;
}

- (NSString*) onPremisesImmutableId
{
    if([[NSNull null] isEqual:self.dictionary[@"onPremisesImmutableId"]])
    {
        return nil;
    }   
    return self.dictionary[@"onPremisesImmutableId"];
}

- (void) setOnPremisesImmutableId: (NSString*) val
{
    self.dictionary[@"onPremisesImmutableId"] = val;
}

- (NSDate*) onPremisesLastSyncDateTime
{
    if(!_onPremisesLastSyncDateTime){
        _onPremisesLastSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"onPremisesLastSyncDateTime"]];
    }
    return _onPremisesLastSyncDateTime;
}

- (void) setOnPremisesLastSyncDateTime: (NSDate*) val
{
    _onPremisesLastSyncDateTime = val;
    self.dictionary[@"onPremisesLastSyncDateTime"] = [val ms_toString];
}

- (NSArray*) onPremisesProvisioningErrors
{
    if(!_onPremisesProvisioningErrors){
        
    NSMutableArray *onPremisesProvisioningErrorsResult = [NSMutableArray array];
    NSArray *onPremisesProvisioningErrors = self.dictionary[@"onPremisesProvisioningErrors"];

    if ([onPremisesProvisioningErrors isKindOfClass:[NSArray class]]){
        for (id tempOnPremisesProvisioningError in onPremisesProvisioningErrors){
            [onPremisesProvisioningErrorsResult addObject:tempOnPremisesProvisioningError];
        }
    }

    _onPremisesProvisioningErrors = onPremisesProvisioningErrorsResult;
        
    }
    return _onPremisesProvisioningErrors;
}

- (void) setOnPremisesProvisioningErrors: (NSArray*) val
{
    _onPremisesProvisioningErrors = val;
    self.dictionary[@"onPremisesProvisioningErrors"] = val;
}

- (NSString*) onPremisesSamAccountName
{
    if([[NSNull null] isEqual:self.dictionary[@"onPremisesSamAccountName"]])
    {
        return nil;
    }   
    return self.dictionary[@"onPremisesSamAccountName"];
}

- (void) setOnPremisesSamAccountName: (NSString*) val
{
    self.dictionary[@"onPremisesSamAccountName"] = val;
}

- (NSString*) onPremisesSecurityIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"onPremisesSecurityIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"onPremisesSecurityIdentifier"];
}

- (void) setOnPremisesSecurityIdentifier: (NSString*) val
{
    self.dictionary[@"onPremisesSecurityIdentifier"] = val;
}

- (BOOL) onPremisesSyncEnabled
{
    _onPremisesSyncEnabled = [self.dictionary[@"onPremisesSyncEnabled"] boolValue];
    return _onPremisesSyncEnabled;
}

- (void) setOnPremisesSyncEnabled: (BOOL) val
{
    _onPremisesSyncEnabled = val;
    self.dictionary[@"onPremisesSyncEnabled"] = @(val);
}

- (NSString*) onPremisesUserPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"onPremisesUserPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"onPremisesUserPrincipalName"];
}

- (void) setOnPremisesUserPrincipalName: (NSString*) val
{
    self.dictionary[@"onPremisesUserPrincipalName"] = val;
}

- (NSArray*) otherMails
{
    return self.dictionary[@"otherMails"];
}

- (void) setOtherMails: (NSArray*) val
{
    self.dictionary[@"otherMails"] = val;
}

- (NSString*) passwordPolicies
{
    if([[NSNull null] isEqual:self.dictionary[@"passwordPolicies"]])
    {
        return nil;
    }   
    return self.dictionary[@"passwordPolicies"];
}

- (void) setPasswordPolicies: (NSString*) val
{
    self.dictionary[@"passwordPolicies"] = val;
}

- (MSGraphPasswordProfile*) passwordProfile
{
    if(!_passwordProfile){
        _passwordProfile = [[MSGraphPasswordProfile alloc] initWithDictionary: self.dictionary[@"passwordProfile"]];
    }
    return _passwordProfile;
}

- (void) setPasswordProfile: (MSGraphPasswordProfile*) val
{
    _passwordProfile = val;
    self.dictionary[@"passwordProfile"] = val;
}

- (NSString*) postalCode
{
    if([[NSNull null] isEqual:self.dictionary[@"postalCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"postalCode"];
}

- (void) setPostalCode: (NSString*) val
{
    self.dictionary[@"postalCode"] = val;
}

- (NSString*) preferredLanguage
{
    if([[NSNull null] isEqual:self.dictionary[@"preferredLanguage"]])
    {
        return nil;
    }   
    return self.dictionary[@"preferredLanguage"];
}

- (void) setPreferredLanguage: (NSString*) val
{
    self.dictionary[@"preferredLanguage"] = val;
}

- (NSArray*) provisionedPlans
{
    if(!_provisionedPlans){
        
    NSMutableArray *provisionedPlansResult = [NSMutableArray array];
    NSArray *provisionedPlans = self.dictionary[@"provisionedPlans"];

    if ([provisionedPlans isKindOfClass:[NSArray class]]){
        for (id tempProvisionedPlan in provisionedPlans){
            [provisionedPlansResult addObject:tempProvisionedPlan];
        }
    }

    _provisionedPlans = provisionedPlansResult;
        
    }
    return _provisionedPlans;
}

- (void) setProvisionedPlans: (NSArray*) val
{
    _provisionedPlans = val;
    self.dictionary[@"provisionedPlans"] = val;
}

- (NSArray*) proxyAddresses
{
    return self.dictionary[@"proxyAddresses"];
}

- (void) setProxyAddresses: (NSArray*) val
{
    self.dictionary[@"proxyAddresses"] = val;
}

- (BOOL) showInAddressList
{
    _showInAddressList = [self.dictionary[@"showInAddressList"] boolValue];
    return _showInAddressList;
}

- (void) setShowInAddressList: (BOOL) val
{
    _showInAddressList = val;
    self.dictionary[@"showInAddressList"] = @(val);
}

- (NSDate*) signInSessionsValidFromDateTime
{
    if(!_signInSessionsValidFromDateTime){
        _signInSessionsValidFromDateTime = [NSDate ms_dateFromString: self.dictionary[@"signInSessionsValidFromDateTime"]];
    }
    return _signInSessionsValidFromDateTime;
}

- (void) setSignInSessionsValidFromDateTime: (NSDate*) val
{
    _signInSessionsValidFromDateTime = val;
    self.dictionary[@"signInSessionsValidFromDateTime"] = [val ms_toString];
}

- (NSString*) state
{
    if([[NSNull null] isEqual:self.dictionary[@"state"]])
    {
        return nil;
    }   
    return self.dictionary[@"state"];
}

- (void) setState: (NSString*) val
{
    self.dictionary[@"state"] = val;
}

- (NSString*) streetAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"streetAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"streetAddress"];
}

- (void) setStreetAddress: (NSString*) val
{
    self.dictionary[@"streetAddress"] = val;
}

- (NSString*) surname
{
    if([[NSNull null] isEqual:self.dictionary[@"surname"]])
    {
        return nil;
    }   
    return self.dictionary[@"surname"];
}

- (void) setSurname: (NSString*) val
{
    self.dictionary[@"surname"] = val;
}

- (NSString*) usageLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"usageLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"usageLocation"];
}

- (void) setUsageLocation: (NSString*) val
{
    self.dictionary[@"usageLocation"] = val;
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}

- (NSString*) userType
{
    if([[NSNull null] isEqual:self.dictionary[@"userType"]])
    {
        return nil;
    }   
    return self.dictionary[@"userType"];
}

- (void) setUserType: (NSString*) val
{
    self.dictionary[@"userType"] = val;
}

- (MSGraphMailboxSettings*) mailboxSettings
{
    if(!_mailboxSettings){
        _mailboxSettings = [[MSGraphMailboxSettings alloc] initWithDictionary: self.dictionary[@"mailboxSettings"]];
    }
    return _mailboxSettings;
}

- (void) setMailboxSettings: (MSGraphMailboxSettings*) val
{
    _mailboxSettings = val;
    self.dictionary[@"mailboxSettings"] = val;
}

- (int32_t) deviceEnrollmentLimit
{
    _deviceEnrollmentLimit = [self.dictionary[@"deviceEnrollmentLimit"] intValue];
    return _deviceEnrollmentLimit;
}

- (void) setDeviceEnrollmentLimit: (int32_t) val
{
    _deviceEnrollmentLimit = val;
    self.dictionary[@"deviceEnrollmentLimit"] = @(val);
}

- (NSString*) aboutMe
{
    if([[NSNull null] isEqual:self.dictionary[@"aboutMe"]])
    {
        return nil;
    }   
    return self.dictionary[@"aboutMe"];
}

- (void) setAboutMe: (NSString*) val
{
    self.dictionary[@"aboutMe"] = val;
}

- (NSDate*) birthday
{
    if(!_birthday){
        _birthday = [NSDate ms_dateFromString: self.dictionary[@"birthday"]];
    }
    return _birthday;
}

- (void) setBirthday: (NSDate*) val
{
    _birthday = val;
    self.dictionary[@"birthday"] = [val ms_toString];
}

- (NSDate*) hireDate
{
    if(!_hireDate){
        _hireDate = [NSDate ms_dateFromString: self.dictionary[@"hireDate"]];
    }
    return _hireDate;
}

- (void) setHireDate: (NSDate*) val
{
    _hireDate = val;
    self.dictionary[@"hireDate"] = [val ms_toString];
}

- (NSArray*) interests
{
    if([[NSNull null] isEqual:self.dictionary[@"interests"]])
    {
        return nil;
    }   
    return self.dictionary[@"interests"];
}

- (void) setInterests: (NSArray*) val
{
    self.dictionary[@"interests"] = val;
}

- (NSString*) mySite
{
    if([[NSNull null] isEqual:self.dictionary[@"mySite"]])
    {
        return nil;
    }   
    return self.dictionary[@"mySite"];
}

- (void) setMySite: (NSString*) val
{
    self.dictionary[@"mySite"] = val;
}

- (NSArray*) pastProjects
{
    if([[NSNull null] isEqual:self.dictionary[@"pastProjects"]])
    {
        return nil;
    }   
    return self.dictionary[@"pastProjects"];
}

- (void) setPastProjects: (NSArray*) val
{
    self.dictionary[@"pastProjects"] = val;
}

- (NSString*) preferredName
{
    if([[NSNull null] isEqual:self.dictionary[@"preferredName"]])
    {
        return nil;
    }   
    return self.dictionary[@"preferredName"];
}

- (void) setPreferredName: (NSString*) val
{
    self.dictionary[@"preferredName"] = val;
}

- (NSArray*) responsibilities
{
    if([[NSNull null] isEqual:self.dictionary[@"responsibilities"]])
    {
        return nil;
    }   
    return self.dictionary[@"responsibilities"];
}

- (void) setResponsibilities: (NSArray*) val
{
    self.dictionary[@"responsibilities"] = val;
}

- (NSArray*) schools
{
    if([[NSNull null] isEqual:self.dictionary[@"schools"]])
    {
        return nil;
    }   
    return self.dictionary[@"schools"];
}

- (void) setSchools: (NSArray*) val
{
    self.dictionary[@"schools"] = val;
}

- (NSArray*) skills
{
    if([[NSNull null] isEqual:self.dictionary[@"skills"]])
    {
        return nil;
    }   
    return self.dictionary[@"skills"];
}

- (void) setSkills: (NSArray*) val
{
    self.dictionary[@"skills"] = val;
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

- (NSArray*) directReports
{
    if(!_directReports){
        
    NSMutableArray *directReportsResult = [NSMutableArray array];
    NSArray *directReports = self.dictionary[@"directReports"];

    if ([directReports isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in directReports){
            [directReportsResult addObject:tempDirectoryObject];
        }
    }

    _directReports = directReportsResult;
        
    }
    return _directReports;
}

- (void) setDirectReports: (NSArray*) val
{
    _directReports = val;
    self.dictionary[@"directReports"] = val;
}

- (NSArray*) licenseDetails
{
    if(!_licenseDetails){
        
    NSMutableArray *licenseDetailsResult = [NSMutableArray array];
    NSArray *licenseDetails = self.dictionary[@"licenseDetails"];

    if ([licenseDetails isKindOfClass:[NSArray class]]){
        for (id tempLicenseDetails in licenseDetails){
            [licenseDetailsResult addObject:tempLicenseDetails];
        }
    }

    _licenseDetails = licenseDetailsResult;
        
    }
    return _licenseDetails;
}

- (void) setLicenseDetails: (NSArray*) val
{
    _licenseDetails = val;
    self.dictionary[@"licenseDetails"] = val;
}

- (MSGraphDirectoryObject*) manager
{
    if(!_manager){
        _manager = [[MSGraphDirectoryObject alloc] initWithDictionary: self.dictionary[@"manager"]];
    }
    return _manager;
}

- (void) setManager: (MSGraphDirectoryObject*) val
{
    _manager = val;
    self.dictionary[@"manager"] = val;
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

- (NSArray*) ownedDevices
{
    if(!_ownedDevices){
        
    NSMutableArray *ownedDevicesResult = [NSMutableArray array];
    NSArray *ownedDevices = self.dictionary[@"ownedDevices"];

    if ([ownedDevices isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in ownedDevices){
            [ownedDevicesResult addObject:tempDirectoryObject];
        }
    }

    _ownedDevices = ownedDevicesResult;
        
    }
    return _ownedDevices;
}

- (void) setOwnedDevices: (NSArray*) val
{
    _ownedDevices = val;
    self.dictionary[@"ownedDevices"] = val;
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

- (NSArray*) registeredDevices
{
    if(!_registeredDevices){
        
    NSMutableArray *registeredDevicesResult = [NSMutableArray array];
    NSArray *registeredDevices = self.dictionary[@"registeredDevices"];

    if ([registeredDevices isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in registeredDevices){
            [registeredDevicesResult addObject:tempDirectoryObject];
        }
    }

    _registeredDevices = registeredDevicesResult;
        
    }
    return _registeredDevices;
}

- (void) setRegisteredDevices: (NSArray*) val
{
    _registeredDevices = val;
    self.dictionary[@"registeredDevices"] = val;
}

- (NSArray*) scopedRoleMemberOf
{
    if(!_scopedRoleMemberOf){
        
    NSMutableArray *scopedRoleMemberOfResult = [NSMutableArray array];
    NSArray *scopedRoleMemberOf = self.dictionary[@"scopedRoleMemberOf"];

    if ([scopedRoleMemberOf isKindOfClass:[NSArray class]]){
        for (id tempScopedRoleMembership in scopedRoleMemberOf){
            [scopedRoleMemberOfResult addObject:tempScopedRoleMembership];
        }
    }

    _scopedRoleMemberOf = scopedRoleMemberOfResult;
        
    }
    return _scopedRoleMemberOf;
}

- (void) setScopedRoleMemberOf: (NSArray*) val
{
    _scopedRoleMemberOf = val;
    self.dictionary[@"scopedRoleMemberOf"] = val;
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

- (MSGraphCalendar*) calendar
{
    if(!_calendar){
        _calendar = [[MSGraphCalendar alloc] initWithDictionary: self.dictionary[@"calendar"]];
    }
    return _calendar;
}

- (void) setCalendar: (MSGraphCalendar*) val
{
    _calendar = val;
    self.dictionary[@"calendar"] = val;
}

- (NSArray*) calendarGroups
{
    if(!_calendarGroups){
        
    NSMutableArray *calendarGroupsResult = [NSMutableArray array];
    NSArray *calendarGroups = self.dictionary[@"calendarGroups"];

    if ([calendarGroups isKindOfClass:[NSArray class]]){
        for (id tempCalendarGroup in calendarGroups){
            [calendarGroupsResult addObject:tempCalendarGroup];
        }
    }

    _calendarGroups = calendarGroupsResult;
        
    }
    return _calendarGroups;
}

- (void) setCalendarGroups: (NSArray*) val
{
    _calendarGroups = val;
    self.dictionary[@"calendarGroups"] = val;
}

- (NSArray*) calendars
{
    if(!_calendars){
        
    NSMutableArray *calendarsResult = [NSMutableArray array];
    NSArray *calendars = self.dictionary[@"calendars"];

    if ([calendars isKindOfClass:[NSArray class]]){
        for (id tempCalendar in calendars){
            [calendarsResult addObject:tempCalendar];
        }
    }

    _calendars = calendarsResult;
        
    }
    return _calendars;
}

- (void) setCalendars: (NSArray*) val
{
    _calendars = val;
    self.dictionary[@"calendars"] = val;
}

- (NSArray*) calendarView
{
    if(!_calendarView){
        
    NSMutableArray *calendarViewResult = [NSMutableArray array];
    NSArray *calendarView = self.dictionary[@"calendarView"];

    if ([calendarView isKindOfClass:[NSArray class]]){
        for (id tempEvent in calendarView){
            [calendarViewResult addObject:tempEvent];
        }
    }

    _calendarView = calendarViewResult;
        
    }
    return _calendarView;
}

- (void) setCalendarView: (NSArray*) val
{
    _calendarView = val;
    self.dictionary[@"calendarView"] = val;
}

- (NSArray*) contactFolders
{
    if(!_contactFolders){
        
    NSMutableArray *contactFoldersResult = [NSMutableArray array];
    NSArray *contactFolders = self.dictionary[@"contactFolders"];

    if ([contactFolders isKindOfClass:[NSArray class]]){
        for (id tempContactFolder in contactFolders){
            [contactFoldersResult addObject:tempContactFolder];
        }
    }

    _contactFolders = contactFoldersResult;
        
    }
    return _contactFolders;
}

- (void) setContactFolders: (NSArray*) val
{
    _contactFolders = val;
    self.dictionary[@"contactFolders"] = val;
}

- (NSArray*) contacts
{
    if(!_contacts){
        
    NSMutableArray *contactsResult = [NSMutableArray array];
    NSArray *contacts = self.dictionary[@"contacts"];

    if ([contacts isKindOfClass:[NSArray class]]){
        for (id tempContact in contacts){
            [contactsResult addObject:tempContact];
        }
    }

    _contacts = contactsResult;
        
    }
    return _contacts;
}

- (void) setContacts: (NSArray*) val
{
    _contacts = val;
    self.dictionary[@"contacts"] = val;
}

- (NSArray*) events
{
    if(!_events){
        
    NSMutableArray *eventsResult = [NSMutableArray array];
    NSArray *events = self.dictionary[@"events"];

    if ([events isKindOfClass:[NSArray class]]){
        for (id tempEvent in events){
            [eventsResult addObject:tempEvent];
        }
    }

    _events = eventsResult;
        
    }
    return _events;
}

- (void) setEvents: (NSArray*) val
{
    _events = val;
    self.dictionary[@"events"] = val;
}

- (MSGraphInferenceClassification*) inferenceClassification
{
    if(!_inferenceClassification){
        _inferenceClassification = [[MSGraphInferenceClassification alloc] initWithDictionary: self.dictionary[@"inferenceClassification"]];
    }
    return _inferenceClassification;
}

- (void) setInferenceClassification: (MSGraphInferenceClassification*) val
{
    _inferenceClassification = val;
    self.dictionary[@"inferenceClassification"] = val;
}

- (NSArray*) mailFolders
{
    if(!_mailFolders){
        
    NSMutableArray *mailFoldersResult = [NSMutableArray array];
    NSArray *mailFolders = self.dictionary[@"mailFolders"];

    if ([mailFolders isKindOfClass:[NSArray class]]){
        for (id tempMailFolder in mailFolders){
            [mailFoldersResult addObject:tempMailFolder];
        }
    }

    _mailFolders = mailFoldersResult;
        
    }
    return _mailFolders;
}

- (void) setMailFolders: (NSArray*) val
{
    _mailFolders = val;
    self.dictionary[@"mailFolders"] = val;
}

- (NSArray*) messages
{
    if(!_messages){
        
    NSMutableArray *messagesResult = [NSMutableArray array];
    NSArray *messages = self.dictionary[@"messages"];

    if ([messages isKindOfClass:[NSArray class]]){
        for (id tempMessage in messages){
            [messagesResult addObject:tempMessage];
        }
    }

    _messages = messagesResult;
        
    }
    return _messages;
}

- (void) setMessages: (NSArray*) val
{
    _messages = val;
    self.dictionary[@"messages"] = val;
}

- (MSGraphOutlookUser*) outlook
{
    if(!_outlook){
        _outlook = [[MSGraphOutlookUser alloc] initWithDictionary: self.dictionary[@"outlook"]];
    }
    return _outlook;
}

- (void) setOutlook: (MSGraphOutlookUser*) val
{
    _outlook = val;
    self.dictionary[@"outlook"] = val;
}

- (NSArray*) people
{
    if(!_people){
        
    NSMutableArray *peopleResult = [NSMutableArray array];
    NSArray *people = self.dictionary[@"people"];

    if ([people isKindOfClass:[NSArray class]]){
        for (id tempPerson in people){
            [peopleResult addObject:tempPerson];
        }
    }

    _people = peopleResult;
        
    }
    return _people;
}

- (void) setPeople: (NSArray*) val
{
    _people = val;
    self.dictionary[@"people"] = val;
}

- (MSGraphProfilePhoto*) photo
{
    if(!_photo){
        _photo = [[MSGraphProfilePhoto alloc] initWithDictionary: self.dictionary[@"photo"]];
    }
    return _photo;
}

- (void) setPhoto: (MSGraphProfilePhoto*) val
{
    _photo = val;
    self.dictionary[@"photo"] = val;
}

- (NSArray*) photos
{
    if(!_photos){
        
    NSMutableArray *photosResult = [NSMutableArray array];
    NSArray *photos = self.dictionary[@"photos"];

    if ([photos isKindOfClass:[NSArray class]]){
        for (id tempProfilePhoto in photos){
            [photosResult addObject:tempProfilePhoto];
        }
    }

    _photos = photosResult;
        
    }
    return _photos;
}

- (void) setPhotos: (NSArray*) val
{
    _photos = val;
    self.dictionary[@"photos"] = val;
}

- (MSGraphDrive*) drive
{
    if(!_drive){
        _drive = [[MSGraphDrive alloc] initWithDictionary: self.dictionary[@"drive"]];
    }
    return _drive;
}

- (void) setDrive: (MSGraphDrive*) val
{
    _drive = val;
    self.dictionary[@"drive"] = val;
}

- (NSArray*) drives
{
    if(!_drives){
        
    NSMutableArray *drivesResult = [NSMutableArray array];
    NSArray *drives = self.dictionary[@"drives"];

    if ([drives isKindOfClass:[NSArray class]]){
        for (id tempDrive in drives){
            [drivesResult addObject:tempDrive];
        }
    }

    _drives = drivesResult;
        
    }
    return _drives;
}

- (void) setDrives: (NSArray*) val
{
    _drives = val;
    self.dictionary[@"drives"] = val;
}

- (NSArray*) followedSites
{
    if(!_followedSites){
        
    NSMutableArray *followedSitesResult = [NSMutableArray array];
    NSArray *followedSites = self.dictionary[@"followedSites"];

    if ([followedSites isKindOfClass:[NSArray class]]){
        for (id tempSite in followedSites){
            [followedSitesResult addObject:tempSite];
        }
    }

    _followedSites = followedSitesResult;
        
    }
    return _followedSites;
}

- (void) setFollowedSites: (NSArray*) val
{
    _followedSites = val;
    self.dictionary[@"followedSites"] = val;
}

- (NSArray*) extensions
{
    if(!_extensions){
        
    NSMutableArray *extensionsResult = [NSMutableArray array];
    NSArray *extensions = self.dictionary[@"extensions"];

    if ([extensions isKindOfClass:[NSArray class]]){
        for (id tempExtension in extensions){
            [extensionsResult addObject:tempExtension];
        }
    }

    _extensions = extensionsResult;
        
    }
    return _extensions;
}

- (void) setExtensions: (NSArray*) val
{
    _extensions = val;
    self.dictionary[@"extensions"] = val;
}

- (NSArray*) managedDevices
{
    if(!_managedDevices){
        
    NSMutableArray *managedDevicesResult = [NSMutableArray array];
    NSArray *managedDevices = self.dictionary[@"managedDevices"];

    if ([managedDevices isKindOfClass:[NSArray class]]){
        for (id tempManagedDevice in managedDevices){
            [managedDevicesResult addObject:tempManagedDevice];
        }
    }

    _managedDevices = managedDevicesResult;
        
    }
    return _managedDevices;
}

- (void) setManagedDevices: (NSArray*) val
{
    _managedDevices = val;
    self.dictionary[@"managedDevices"] = val;
}

- (NSArray*) managedAppRegistrations
{
    if(!_managedAppRegistrations){
        
    NSMutableArray *managedAppRegistrationsResult = [NSMutableArray array];
    NSArray *managedAppRegistrations = self.dictionary[@"managedAppRegistrations"];

    if ([managedAppRegistrations isKindOfClass:[NSArray class]]){
        for (id tempManagedAppRegistration in managedAppRegistrations){
            [managedAppRegistrationsResult addObject:tempManagedAppRegistration];
        }
    }

    _managedAppRegistrations = managedAppRegistrationsResult;
        
    }
    return _managedAppRegistrations;
}

- (void) setManagedAppRegistrations: (NSArray*) val
{
    _managedAppRegistrations = val;
    self.dictionary[@"managedAppRegistrations"] = val;
}

- (NSArray*) deviceManagementTroubleshootingEvents
{
    if(!_deviceManagementTroubleshootingEvents){
        
    NSMutableArray *deviceManagementTroubleshootingEventsResult = [NSMutableArray array];
    NSArray *deviceManagementTroubleshootingEvents = self.dictionary[@"deviceManagementTroubleshootingEvents"];

    if ([deviceManagementTroubleshootingEvents isKindOfClass:[NSArray class]]){
        for (id tempDeviceManagementTroubleshootingEvent in deviceManagementTroubleshootingEvents){
            [deviceManagementTroubleshootingEventsResult addObject:tempDeviceManagementTroubleshootingEvent];
        }
    }

    _deviceManagementTroubleshootingEvents = deviceManagementTroubleshootingEventsResult;
        
    }
    return _deviceManagementTroubleshootingEvents;
}

- (void) setDeviceManagementTroubleshootingEvents: (NSArray*) val
{
    _deviceManagementTroubleshootingEvents = val;
    self.dictionary[@"deviceManagementTroubleshootingEvents"] = val;
}

- (MSGraphPlannerUser*) planner
{
    if(!_planner){
        _planner = [[MSGraphPlannerUser alloc] initWithDictionary: self.dictionary[@"planner"]];
    }
    return _planner;
}

- (void) setPlanner: (MSGraphPlannerUser*) val
{
    _planner = val;
    self.dictionary[@"planner"] = val;
}

- (MSGraphOfficeGraphInsights*) insights
{
    if(!_insights){
        _insights = [[MSGraphOfficeGraphInsights alloc] initWithDictionary: self.dictionary[@"insights"]];
    }
    return _insights;
}

- (void) setInsights: (MSGraphOfficeGraphInsights*) val
{
    _insights = val;
    self.dictionary[@"insights"] = val;
}

- (MSGraphUserSettings*) settings
{
    if(!_settings){
        _settings = [[MSGraphUserSettings alloc] initWithDictionary: self.dictionary[@"settings"]];
    }
    return _settings;
}

- (void) setSettings: (MSGraphUserSettings*) val
{
    _settings = val;
    self.dictionary[@"settings"] = val;
}

- (MSGraphOnenote*) onenote
{
    if(!_onenote){
        _onenote = [[MSGraphOnenote alloc] initWithDictionary: self.dictionary[@"onenote"]];
    }
    return _onenote;
}

- (void) setOnenote: (MSGraphOnenote*) val
{
    _onenote = val;
    self.dictionary[@"onenote"] = val;
}

- (NSArray*) activities
{
    if(!_activities){
        
    NSMutableArray *activitiesResult = [NSMutableArray array];
    NSArray *activities = self.dictionary[@"activities"];

    if ([activities isKindOfClass:[NSArray class]]){
        for (id tempUserActivity in activities){
            [activitiesResult addObject:tempUserActivity];
        }
    }

    _activities = activitiesResult;
        
    }
    return _activities;
}

- (void) setActivities: (NSArray*) val
{
    _activities = val;
    self.dictionary[@"activities"] = val;
}

- (NSArray*) onlineMeetings
{
    if(!_onlineMeetings){
        
    NSMutableArray *onlineMeetingsResult = [NSMutableArray array];
    NSArray *onlineMeetings = self.dictionary[@"onlineMeetings"];

    if ([onlineMeetings isKindOfClass:[NSArray class]]){
        for (id tempOnlineMeeting in onlineMeetings){
            [onlineMeetingsResult addObject:tempOnlineMeeting];
        }
    }

    _onlineMeetings = onlineMeetingsResult;
        
    }
    return _onlineMeetings;
}

- (void) setOnlineMeetings: (NSArray*) val
{
    _onlineMeetings = val;
    self.dictionary[@"onlineMeetings"] = val;
}

- (NSArray*) joinedTeams
{
    if(!_joinedTeams){
        
    NSMutableArray *joinedTeamsResult = [NSMutableArray array];
    NSArray *joinedTeams = self.dictionary[@"joinedTeams"];

    if ([joinedTeams isKindOfClass:[NSArray class]]){
        for (id tempTeam in joinedTeams){
            [joinedTeamsResult addObject:tempTeam];
        }
    }

    _joinedTeams = joinedTeamsResult;
        
    }
    return _joinedTeams;
}

- (void) setJoinedTeams: (NSArray*) val
{
    _joinedTeams = val;
    self.dictionary[@"joinedTeams"] = val;
}

- (MSGraphUserTeamwork*) teamwork
{
    if(!_teamwork){
        _teamwork = [[MSGraphUserTeamwork alloc] initWithDictionary: self.dictionary[@"teamwork"]];
    }
    return _teamwork;
}

- (void) setTeamwork: (MSGraphUserTeamwork*) val
{
    _teamwork = val;
    self.dictionary[@"teamwork"] = val;
}


@end
