// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphSubscription : MSGraphEntity

  @property (nullable, nonatomic, setter=setApplicationId:, getter=applicationId) NSString* applicationId;
    @property (nonnull, nonatomic, setter=setChangeType:, getter=changeType) NSString* changeType;
    @property (nullable, nonatomic, setter=setClientState:, getter=clientState) NSString* clientState;
    @property (nullable, nonatomic, setter=setCreatorId:, getter=creatorId) NSString* creatorId;
    @property (nullable, nonatomic, setter=setEncryptionCertificate:, getter=encryptionCertificate) NSString* encryptionCertificate;
    @property (nullable, nonatomic, setter=setEncryptionCertificateId:, getter=encryptionCertificateId) NSString* encryptionCertificateId;
    @property (nonnull, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nonatomic, setter=setIncludeResourceData:, getter=includeResourceData) BOOL includeResourceData;
    @property (nullable, nonatomic, setter=setLatestSupportedTlsVersion:, getter=latestSupportedTlsVersion) NSString* latestSupportedTlsVersion;
    @property (nullable, nonatomic, setter=setLifecycleNotificationUrl:, getter=lifecycleNotificationUrl) NSString* lifecycleNotificationUrl;
    @property (nullable, nonatomic, setter=setNotificationQueryOptions:, getter=notificationQueryOptions) NSString* notificationQueryOptions;
    @property (nonnull, nonatomic, setter=setNotificationUrl:, getter=notificationUrl) NSString* notificationUrl;
    @property (nonnull, nonatomic, setter=setResource:, getter=resource) NSString* resource;
  
@end
