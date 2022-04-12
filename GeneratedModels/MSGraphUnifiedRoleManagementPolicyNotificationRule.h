// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphUnifiedRoleManagementPolicyRule.h"

@interface MSGraphUnifiedRoleManagementPolicyNotificationRule : MSGraphUnifiedRoleManagementPolicyRule

  @property (nonatomic, setter=setIsDefaultRecipientsEnabled:, getter=isDefaultRecipientsEnabled) BOOL isDefaultRecipientsEnabled;
    @property (nullable, nonatomic, setter=setNotificationLevel:, getter=notificationLevel) NSString* notificationLevel;
    @property (nullable, nonatomic, setter=setNotificationRecipients:, getter=notificationRecipients) NSArray* notificationRecipients;
    @property (nullable, nonatomic, setter=setNotificationType:, getter=notificationType) NSString* notificationType;
    @property (nullable, nonatomic, setter=setRecipientType:, getter=recipientType) NSString* recipientType;
  
@end
