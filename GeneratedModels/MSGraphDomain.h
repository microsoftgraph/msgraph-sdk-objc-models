// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDomainState, MSGraphDirectoryObject, MSGraphDomainDnsRecord; 


#import "MSGraphEntity.h"

@interface MSGraphDomain : MSGraphEntity

  @property (nonnull, nonatomic, setter=setAuthenticationType:, getter=authenticationType) NSString* authenticationType;
    @property (nullable, nonatomic, setter=setAvailabilityStatus:, getter=availabilityStatus) NSString* availabilityStatus;
    @property (nonatomic, setter=setIsAdminManaged:, getter=isAdminManaged) BOOL isAdminManaged;
    @property (nonatomic, setter=setIsDefault:, getter=isDefault) BOOL isDefault;
    @property (nonatomic, setter=setIsInitial:, getter=isInitial) BOOL isInitial;
    @property (nonatomic, setter=setIsRoot:, getter=isRoot) BOOL isRoot;
    @property (nonatomic, setter=setIsVerified:, getter=isVerified) BOOL isVerified;
    @property (nullable, nonatomic, setter=setManufacturer:, getter=manufacturer) NSString* manufacturer;
    @property (nullable, nonatomic, setter=setModel:, getter=model) NSString* model;
    @property (nonatomic, setter=setPasswordNotificationWindowInDays:, getter=passwordNotificationWindowInDays) int32_t passwordNotificationWindowInDays;
    @property (nonatomic, setter=setPasswordValidityPeriodInDays:, getter=passwordValidityPeriodInDays) int32_t passwordValidityPeriodInDays;
    @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphDomainState* state;
    @property (nonnull, nonatomic, setter=setSupportedServices:, getter=supportedServices) NSArray* supportedServices;
    @property (nullable, nonatomic, setter=setDomainNameReferences:, getter=domainNameReferences) NSArray* domainNameReferences;
    @property (nullable, nonatomic, setter=setServiceConfigurationRecords:, getter=serviceConfigurationRecords) NSArray* serviceConfigurationRecords;
    @property (nullable, nonatomic, setter=setVerificationDnsRecords:, getter=verificationDnsRecords) NSArray* verificationDnsRecords;
  
@end
