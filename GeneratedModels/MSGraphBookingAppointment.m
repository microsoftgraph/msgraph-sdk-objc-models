// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingAppointment()
{
    NSString* _additionalInformation;
    NSArray* _customers;
    NSString* _customerTimeZone;
    MSDuration* _duration;
    MSGraphDateTimeTimeZone* _endDateTime;
    int32_t _filledAttendeesCount;
    BOOL _isLocationOnline;
    NSString* _joinWebUrl;
    int32_t _maximumAttendeesCount;
    BOOL _optOutOfCustomerEmail;
    MSDuration* _postBuffer;
    MSDuration* _preBuffer;
    double _price;
    MSGraphBookingPriceType* _priceType;
    NSArray* _reminders;
    NSString* _selfServiceAppointmentId;
    NSString* _serviceId;
    MSGraphLocation* _serviceLocation;
    NSString* _serviceName;
    NSString* _serviceNotes;
    BOOL _smsNotificationsEnabled;
    NSArray* _staffMemberIds;
    MSGraphDateTimeTimeZone* _startDateTime;
}
@end

@implementation MSGraphBookingAppointment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.bookingAppointment";
    }
    return self;
}
- (NSString*) additionalInformation
{
    if([[NSNull null] isEqual:self.dictionary[@"additionalInformation"]])
    {
        return nil;
    }   
    return self.dictionary[@"additionalInformation"];
}

- (void) setAdditionalInformation: (NSString*) val
{
    self.dictionary[@"additionalInformation"] = val;
}

- (NSArray*) customers
{
    if(!_customers){
        
    NSMutableArray *customersResult = [NSMutableArray array];
    NSArray *customers = self.dictionary[@"customers"];

    if ([customers isKindOfClass:[NSArray class]]){
        for (id tempBookingCustomerInformationBase in customers){
            [customersResult addObject:tempBookingCustomerInformationBase];
        }
    }

    _customers = customersResult;
        
    }
    return _customers;
}

- (void) setCustomers: (NSArray*) val
{
    _customers = val;
    self.dictionary[@"customers"] = val;
}

- (NSString*) customerTimeZone
{
    if([[NSNull null] isEqual:self.dictionary[@"customerTimeZone"]])
    {
        return nil;
    }   
    return self.dictionary[@"customerTimeZone"];
}

- (void) setCustomerTimeZone: (NSString*) val
{
    self.dictionary[@"customerTimeZone"] = val;
}

- (MSDuration*) duration
{
    if(!_duration){
        _duration = [MSDuration ms_durationFromString: self.dictionary[@"duration"]];
    }
    return _duration;
}

- (void) setDuration: (MSDuration*) val
{
    _duration = val;
    self.dictionary[@"duration"] = val.durationString;
}

- (MSGraphDateTimeTimeZone*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (MSGraphDateTimeTimeZone*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = val;
}

- (int32_t) filledAttendeesCount
{
    _filledAttendeesCount = [self.dictionary[@"filledAttendeesCount"] intValue];
    return _filledAttendeesCount;
}

- (void) setFilledAttendeesCount: (int32_t) val
{
    _filledAttendeesCount = val;
    self.dictionary[@"filledAttendeesCount"] = @(val);
}

- (BOOL) isLocationOnline
{
    _isLocationOnline = [self.dictionary[@"isLocationOnline"] boolValue];
    return _isLocationOnline;
}

- (void) setIsLocationOnline: (BOOL) val
{
    _isLocationOnline = val;
    self.dictionary[@"isLocationOnline"] = @(val);
}

- (NSString*) joinWebUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"joinWebUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"joinWebUrl"];
}

- (void) setJoinWebUrl: (NSString*) val
{
    self.dictionary[@"joinWebUrl"] = val;
}

- (int32_t) maximumAttendeesCount
{
    _maximumAttendeesCount = [self.dictionary[@"maximumAttendeesCount"] intValue];
    return _maximumAttendeesCount;
}

- (void) setMaximumAttendeesCount: (int32_t) val
{
    _maximumAttendeesCount = val;
    self.dictionary[@"maximumAttendeesCount"] = @(val);
}

- (BOOL) optOutOfCustomerEmail
{
    _optOutOfCustomerEmail = [self.dictionary[@"optOutOfCustomerEmail"] boolValue];
    return _optOutOfCustomerEmail;
}

- (void) setOptOutOfCustomerEmail: (BOOL) val
{
    _optOutOfCustomerEmail = val;
    self.dictionary[@"optOutOfCustomerEmail"] = @(val);
}

- (MSDuration*) postBuffer
{
    if(!_postBuffer){
        _postBuffer = [MSDuration ms_durationFromString: self.dictionary[@"postBuffer"]];
    }
    return _postBuffer;
}

- (void) setPostBuffer: (MSDuration*) val
{
    _postBuffer = val;
    self.dictionary[@"postBuffer"] = val.durationString;
}

- (MSDuration*) preBuffer
{
    if(!_preBuffer){
        _preBuffer = [MSDuration ms_durationFromString: self.dictionary[@"preBuffer"]];
    }
    return _preBuffer;
}

- (void) setPreBuffer: (MSDuration*) val
{
    _preBuffer = val;
    self.dictionary[@"preBuffer"] = val.durationString;
}

- (double) price
{
    _price = [self.dictionary[@"price"] floatValue];
    return _price;
}

- (void) setPrice: (double) val
{
    _price = val;
    self.dictionary[@"price"] = @(val);
}

- (MSGraphBookingPriceType*) priceType
{
    if(!_priceType){
        _priceType = [self.dictionary[@"priceType"] toMSGraphBookingPriceType];
    }
    return _priceType;
}

- (void) setPriceType: (MSGraphBookingPriceType*) val
{
    _priceType = val;
    self.dictionary[@"priceType"] = val;
}

- (NSArray*) reminders
{
    if(!_reminders){
        
    NSMutableArray *remindersResult = [NSMutableArray array];
    NSArray *reminders = self.dictionary[@"reminders"];

    if ([reminders isKindOfClass:[NSArray class]]){
        for (id tempBookingReminder in reminders){
            [remindersResult addObject:tempBookingReminder];
        }
    }

    _reminders = remindersResult;
        
    }
    return _reminders;
}

- (void) setReminders: (NSArray*) val
{
    _reminders = val;
    self.dictionary[@"reminders"] = val;
}

- (NSString*) selfServiceAppointmentId
{
    if([[NSNull null] isEqual:self.dictionary[@"selfServiceAppointmentId"]])
    {
        return nil;
    }   
    return self.dictionary[@"selfServiceAppointmentId"];
}

- (void) setSelfServiceAppointmentId: (NSString*) val
{
    self.dictionary[@"selfServiceAppointmentId"] = val;
}

- (NSString*) serviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"serviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"serviceId"];
}

- (void) setServiceId: (NSString*) val
{
    self.dictionary[@"serviceId"] = val;
}

- (MSGraphLocation*) serviceLocation
{
    if(!_serviceLocation){
        _serviceLocation = [[MSGraphLocation alloc] initWithDictionary: self.dictionary[@"serviceLocation"]];
    }
    return _serviceLocation;
}

- (void) setServiceLocation: (MSGraphLocation*) val
{
    _serviceLocation = val;
    self.dictionary[@"serviceLocation"] = val;
}

- (NSString*) serviceName
{
    return self.dictionary[@"serviceName"];
}

- (void) setServiceName: (NSString*) val
{
    self.dictionary[@"serviceName"] = val;
}

- (NSString*) serviceNotes
{
    if([[NSNull null] isEqual:self.dictionary[@"serviceNotes"]])
    {
        return nil;
    }   
    return self.dictionary[@"serviceNotes"];
}

- (void) setServiceNotes: (NSString*) val
{
    self.dictionary[@"serviceNotes"] = val;
}

- (BOOL) smsNotificationsEnabled
{
    _smsNotificationsEnabled = [self.dictionary[@"smsNotificationsEnabled"] boolValue];
    return _smsNotificationsEnabled;
}

- (void) setSmsNotificationsEnabled: (BOOL) val
{
    _smsNotificationsEnabled = val;
    self.dictionary[@"smsNotificationsEnabled"] = @(val);
}

- (NSArray*) staffMemberIds
{
    if([[NSNull null] isEqual:self.dictionary[@"staffMemberIds"]])
    {
        return nil;
    }   
    return self.dictionary[@"staffMemberIds"];
}

- (void) setStaffMemberIds: (NSArray*) val
{
    self.dictionary[@"staffMemberIds"] = val;
}

- (MSGraphDateTimeTimeZone*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (MSGraphDateTimeTimeZone*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = val;
}


@end
