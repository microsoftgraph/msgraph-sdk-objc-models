// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration; 
#import "MSGraphBookingReminderRecipients.h"


#import "MSObject.h"

@interface MSGraphBookingReminder : MSObject

@property (nonnull, nonatomic, setter=setMessage:, getter=message) NSString* message;
@property (nonnull, nonatomic, setter=setOffset:, getter=offset) MSDuration* offset;
@property (nonnull, nonatomic, setter=setRecipients:, getter=recipients) MSGraphBookingReminderRecipients* recipients;

@end
