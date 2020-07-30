// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphResourceData; 
#import "MSGraphChangeType.h"


#import "MSObject.h"

@interface MSGraphChangeNotification : MSObject

@property (nullable, nonatomic, setter=setChangeNotificationId:, getter=changeNotificationId) NSString* changeNotificationId;
@property (nonnull, nonatomic, setter=setSubscriptionId:, getter=subscriptionId) NSString* subscriptionId;
@property (nonnull, nonatomic, setter=setSubscriptionExpirationDateTime:, getter=subscriptionExpirationDateTime) NSDate* subscriptionExpirationDateTime;
@property (nullable, nonatomic, setter=setClientState:, getter=clientState) NSString* clientState;
@property (nonnull, nonatomic, setter=setChangeType:, getter=changeType) MSGraphChangeType* changeType;
@property (nonnull, nonatomic, setter=setResource:, getter=resource) NSString* resource;
@property (nonnull, nonatomic, setter=setTenantId:, getter=tenantId) NSString* tenantId;
@property (nullable, nonatomic, setter=setResourceData:, getter=resourceData) MSGraphResourceData* resourceData;

@end
