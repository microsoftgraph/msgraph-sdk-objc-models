// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBookingReminderRecipients.h"

@interface MSGraphBookingReminderRecipients () {
    MSGraphBookingReminderRecipientsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphBookingReminderRecipientsValue enumValue;
@end

@implementation MSGraphBookingReminderRecipients

+ (MSGraphBookingReminderRecipients*) allAttendees {
    static MSGraphBookingReminderRecipients *_allAttendees;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAttendees = [[MSGraphBookingReminderRecipients alloc] init];
        _allAttendees.enumValue = MSGraphBookingReminderRecipientsAllAttendees;
    });
    return _allAttendees;
}
+ (MSGraphBookingReminderRecipients*) staff {
    static MSGraphBookingReminderRecipients *_staff;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _staff = [[MSGraphBookingReminderRecipients alloc] init];
        _staff.enumValue = MSGraphBookingReminderRecipientsStaff;
    });
    return _staff;
}
+ (MSGraphBookingReminderRecipients*) customer {
    static MSGraphBookingReminderRecipients *_customer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _customer = [[MSGraphBookingReminderRecipients alloc] init];
        _customer.enumValue = MSGraphBookingReminderRecipientsCustomer;
    });
    return _customer;
}
+ (MSGraphBookingReminderRecipients*) unknownFutureValue {
    static MSGraphBookingReminderRecipients *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphBookingReminderRecipients alloc] init];
        _unknownFutureValue.enumValue = MSGraphBookingReminderRecipientsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphBookingReminderRecipients*) UnknownEnumValue {
    static MSGraphBookingReminderRecipients *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphBookingReminderRecipients alloc] init];
        _unknownValue.enumValue = MSGraphBookingReminderRecipientsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphBookingReminderRecipients*) bookingReminderRecipientsWithEnumValue:(MSGraphBookingReminderRecipientsValue)val {

    switch(val)
    {
        case MSGraphBookingReminderRecipientsAllAttendees:
            return [MSGraphBookingReminderRecipients allAttendees];
        case MSGraphBookingReminderRecipientsStaff:
            return [MSGraphBookingReminderRecipients staff];
        case MSGraphBookingReminderRecipientsCustomer:
            return [MSGraphBookingReminderRecipients customer];
        case MSGraphBookingReminderRecipientsUnknownFutureValue:
            return [MSGraphBookingReminderRecipients unknownFutureValue];
        case MSGraphBookingReminderRecipientsEndOfEnum:
        default:
            return [MSGraphBookingReminderRecipients UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphBookingReminderRecipientsAllAttendees:
            return @"allAttendees";
        case MSGraphBookingReminderRecipientsStaff:
            return @"staff";
        case MSGraphBookingReminderRecipientsCustomer:
            return @"customer";
        case MSGraphBookingReminderRecipientsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphBookingReminderRecipientsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphBookingReminderRecipientsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphBookingReminderRecipients)

- (MSGraphBookingReminderRecipients*) toMSGraphBookingReminderRecipients{

    if([self isEqualToString:@"allAttendees"])
    {
          return [MSGraphBookingReminderRecipients allAttendees];
    }
    else if([self isEqualToString:@"staff"])
    {
          return [MSGraphBookingReminderRecipients staff];
    }
    else if([self isEqualToString:@"customer"])
    {
          return [MSGraphBookingReminderRecipients customer];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphBookingReminderRecipients unknownFutureValue];
    }
    else {
        return [MSGraphBookingReminderRecipients UnknownEnumValue];
    }
}

@end
