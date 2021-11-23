// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAccessReviewNotificationRecipientScope; 


#import "MSObject.h"

@interface MSGraphAccessReviewNotificationRecipientItem : MSObject

@property (nullable, nonatomic, setter=setNotificationRecipientScope:, getter=notificationRecipientScope) MSGraphAccessReviewNotificationRecipientScope* notificationRecipientScope;
@property (nullable, nonatomic, setter=setNotificationTemplateType:, getter=notificationTemplateType) NSString* notificationTemplateType;

@end
