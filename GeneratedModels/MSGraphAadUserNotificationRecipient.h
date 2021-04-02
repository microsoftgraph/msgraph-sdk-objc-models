// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphTeamworkNotificationRecipient.h"

@interface MSGraphAadUserNotificationRecipient : MSGraphTeamworkNotificationRecipient

@property (nonnull, nonatomic, setter=setUserId:, getter=userId) NSString* userId;

@end
