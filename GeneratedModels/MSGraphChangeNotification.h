// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphChangeNotificationEncryptedContent, MSGraphResourceData; 
#import "MSGraphChangeType.h"
#import "MSGraphLifecycleEventType.h"


#import "MSObject.h"

@interface MSGraphChangeNotification : MSObject

@property (nonnull, nonatomic, setter=setChangeType:, getter=changeType) MSGraphChangeType* changeType;
@property (nullable, nonatomic, setter=setClientState:, getter=clientState) NSString* clientState;
@property (nullable, nonatomic, setter=setEncryptedContent:, getter=encryptedContent) MSGraphChangeNotificationEncryptedContent* encryptedContent;
@property (nullable, nonatomic, setter=setChangeNotificationId:, getter=changeNotificationId) NSString* changeNotificationId;
@property (nullable, nonatomic, setter=setLifecycleEvent:, getter=lifecycleEvent) MSGraphLifecycleEventType* lifecycleEvent;
@property (nonnull, nonatomic, setter=setResource:, getter=resource) NSString* resource;
@property (nullable, nonatomic, setter=setResourceData:, getter=resourceData) MSGraphResourceData* resourceData;
@property (nonnull, nonatomic, setter=setSubscriptionExpirationDateTime:, getter=subscriptionExpirationDateTime) NSDate* subscriptionExpirationDateTime;
@property (nonnull, nonatomic, setter=setSubscriptionId:, getter=subscriptionId) NSString* subscriptionId;
@property (nonnull, nonatomic, setter=setTenantId:, getter=tenantId) NSString* tenantId;

@end
