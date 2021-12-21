// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingReminder()
{
    NSString* _message;
    MSDuration* _offset;
    MSGraphBookingReminderRecipients* _recipients;
}
@end

@implementation MSGraphBookingReminder

- (NSString*) message
{
    return self.dictionary[@"message"];
}

- (void) setMessage: (NSString*) val
{
    self.dictionary[@"message"] = val;
}

- (MSDuration*) offset
{
    if(!_offset){
        _offset = [MSDuration ms_durationFromString: self.dictionary[@"offset"]];
    }
    return _offset;
}

- (void) setOffset: (MSDuration*) val
{
    _offset = val;
    self.dictionary[@"offset"] = val.durationString;
}

- (MSGraphBookingReminderRecipients*) recipients
{
    if(!_recipients){
        _recipients = [self.dictionary[@"recipients"] toMSGraphBookingReminderRecipients];
    }
    return _recipients;
}

- (void) setRecipients: (MSGraphBookingReminderRecipients*) val
{
    _recipients = val;
    self.dictionary[@"recipients"] = val;
}

@end
