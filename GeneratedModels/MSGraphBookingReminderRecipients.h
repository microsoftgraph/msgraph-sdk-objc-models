// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphBookingReminderRecipientsValue){

	MSGraphBookingReminderRecipientsAllAttendees = 0,
	MSGraphBookingReminderRecipientsStaff = 1,
	MSGraphBookingReminderRecipientsCustomer = 2,
	MSGraphBookingReminderRecipientsUnknownFutureValue = 3,
    MSGraphBookingReminderRecipientsEndOfEnum
};

@interface MSGraphBookingReminderRecipients : NSObject

+(MSGraphBookingReminderRecipients*) allAttendees;
+(MSGraphBookingReminderRecipients*) staff;
+(MSGraphBookingReminderRecipients*) customer;
+(MSGraphBookingReminderRecipients*) unknownFutureValue;

+(MSGraphBookingReminderRecipients*) UnknownEnumValue;

+(MSGraphBookingReminderRecipients*) bookingReminderRecipientsWithEnumValue:(MSGraphBookingReminderRecipientsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphBookingReminderRecipientsValue enumValue;

@end


@interface NSString (MSGraphBookingReminderRecipients)

- (MSGraphBookingReminderRecipients*) toMSGraphBookingReminderRecipients;

@end
