// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingService()
{
    NSString* _additionalInformation;
    NSArray* _customQuestions;
    MSDuration* _defaultDuration;
    MSGraphLocation* _defaultLocation;
    double _defaultPrice;
    MSGraphBookingPriceType* _defaultPriceType;
    NSArray* _defaultReminders;
    NSString* _bookingServiceDescription;
    NSString* _displayName;
    BOOL _isHiddenFromCustomers;
    BOOL _isLocationOnline;
    int32_t _maximumAttendeesCount;
    NSString* _notes;
    MSDuration* _postBuffer;
    MSDuration* _preBuffer;
    MSGraphBookingSchedulingPolicy* _schedulingPolicy;
    BOOL _smsNotificationsEnabled;
    NSArray* _staffMemberIds;
    NSString* _webUrl;
}
@end

@implementation MSGraphBookingService

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.bookingService";
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

- (NSArray*) customQuestions
{
    if(!_customQuestions){
        
    NSMutableArray *customQuestionsResult = [NSMutableArray array];
    NSArray *customQuestions = self.dictionary[@"customQuestions"];

    if ([customQuestions isKindOfClass:[NSArray class]]){
        for (id tempBookingQuestionAssignment in customQuestions){
            [customQuestionsResult addObject:tempBookingQuestionAssignment];
        }
    }

    _customQuestions = customQuestionsResult;
        
    }
    return _customQuestions;
}

- (void) setCustomQuestions: (NSArray*) val
{
    _customQuestions = val;
    self.dictionary[@"customQuestions"] = val;
}

- (MSDuration*) defaultDuration
{
    if(!_defaultDuration){
        _defaultDuration = [MSDuration ms_durationFromString: self.dictionary[@"defaultDuration"]];
    }
    return _defaultDuration;
}

- (void) setDefaultDuration: (MSDuration*) val
{
    _defaultDuration = val;
    self.dictionary[@"defaultDuration"] = val.durationString;
}

- (MSGraphLocation*) defaultLocation
{
    if(!_defaultLocation){
        _defaultLocation = [[MSGraphLocation alloc] initWithDictionary: self.dictionary[@"defaultLocation"]];
    }
    return _defaultLocation;
}

- (void) setDefaultLocation: (MSGraphLocation*) val
{
    _defaultLocation = val;
    self.dictionary[@"defaultLocation"] = val;
}

- (double) defaultPrice
{
    _defaultPrice = [self.dictionary[@"defaultPrice"] floatValue];
    return _defaultPrice;
}

- (void) setDefaultPrice: (double) val
{
    _defaultPrice = val;
    self.dictionary[@"defaultPrice"] = @(val);
}

- (MSGraphBookingPriceType*) defaultPriceType
{
    if(!_defaultPriceType){
        _defaultPriceType = [self.dictionary[@"defaultPriceType"] toMSGraphBookingPriceType];
    }
    return _defaultPriceType;
}

- (void) setDefaultPriceType: (MSGraphBookingPriceType*) val
{
    _defaultPriceType = val;
    self.dictionary[@"defaultPriceType"] = val;
}

- (NSArray*) defaultReminders
{
    if(!_defaultReminders){
        
    NSMutableArray *defaultRemindersResult = [NSMutableArray array];
    NSArray *defaultReminders = self.dictionary[@"defaultReminders"];

    if ([defaultReminders isKindOfClass:[NSArray class]]){
        for (id tempBookingReminder in defaultReminders){
            [defaultRemindersResult addObject:tempBookingReminder];
        }
    }

    _defaultReminders = defaultRemindersResult;
        
    }
    return _defaultReminders;
}

- (void) setDefaultReminders: (NSArray*) val
{
    _defaultReminders = val;
    self.dictionary[@"defaultReminders"] = val;
}

- (NSString*) bookingServiceDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setBookingServiceDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (BOOL) isHiddenFromCustomers
{
    _isHiddenFromCustomers = [self.dictionary[@"isHiddenFromCustomers"] boolValue];
    return _isHiddenFromCustomers;
}

- (void) setIsHiddenFromCustomers: (BOOL) val
{
    _isHiddenFromCustomers = val;
    self.dictionary[@"isHiddenFromCustomers"] = @(val);
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

- (NSString*) notes
{
    if([[NSNull null] isEqual:self.dictionary[@"notes"]])
    {
        return nil;
    }   
    return self.dictionary[@"notes"];
}

- (void) setNotes: (NSString*) val
{
    self.dictionary[@"notes"] = val;
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

- (MSGraphBookingSchedulingPolicy*) schedulingPolicy
{
    if(!_schedulingPolicy){
        _schedulingPolicy = [[MSGraphBookingSchedulingPolicy alloc] initWithDictionary: self.dictionary[@"schedulingPolicy"]];
    }
    return _schedulingPolicy;
}

- (void) setSchedulingPolicy: (MSGraphBookingSchedulingPolicy*) val
{
    _schedulingPolicy = val;
    self.dictionary[@"schedulingPolicy"] = val;
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

- (NSString*) webUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webUrl"];
}

- (void) setWebUrl: (NSString*) val
{
    self.dictionary[@"webUrl"] = val;
}


@end
