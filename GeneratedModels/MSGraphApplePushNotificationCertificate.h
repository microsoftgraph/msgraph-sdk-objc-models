// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphApplePushNotificationCertificate : MSGraphEntity

  @property (nullable, nonatomic, setter=setAppleIdentifier:, getter=appleIdentifier) NSString* appleIdentifier;
    @property (nullable, nonatomic, setter=setCertificate:, getter=certificate) NSString* certificate;
    @property (nonnull, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setTopicIdentifier:, getter=topicIdentifier) NSString* topicIdentifier;
  
@end
