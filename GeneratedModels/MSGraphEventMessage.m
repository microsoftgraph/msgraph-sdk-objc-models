// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEventMessage()
{
    MSGraphMeetingMessageType* _meetingMessageType;
    MSGraphDateTimeTimeZone* _startDateTime;
    MSGraphDateTimeTimeZone* _endDateTime;
    MSGraphLocation* _location;
    MSGraphEventType* _type;
    MSGraphPatternedRecurrence* _recurrence;
    BOOL _isOutOfDate;
    BOOL _isAllDay;
    BOOL _isDelegated;
    MSGraphEvent* _event;
}
@end

@implementation MSGraphEventMessage

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.eventMessage";
    }
    return self;
}
- (MSGraphMeetingMessageType*) meetingMessageType
{
    if(!_meetingMessageType){
        _meetingMessageType = [self.dictionary[@"meetingMessageType"] toMSGraphMeetingMessageType];
    }
    return _meetingMessageType;
}

- (void) setMeetingMessageType: (MSGraphMeetingMessageType*) val
{
    _meetingMessageType = val;
    self.dictionary[@"meetingMessageType"] = val;
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

- (MSGraphLocation*) location
{
    if(!_location){
        _location = [[MSGraphLocation alloc] initWithDictionary: self.dictionary[@"location"]];
    }
    return _location;
}

- (void) setLocation: (MSGraphLocation*) val
{
    _location = val;
    self.dictionary[@"location"] = val;
}

- (MSGraphEventType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphEventType];
    }
    return _type;
}

- (void) setType: (MSGraphEventType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

- (MSGraphPatternedRecurrence*) recurrence
{
    if(!_recurrence){
        _recurrence = [[MSGraphPatternedRecurrence alloc] initWithDictionary: self.dictionary[@"recurrence"]];
    }
    return _recurrence;
}

- (void) setRecurrence: (MSGraphPatternedRecurrence*) val
{
    _recurrence = val;
    self.dictionary[@"recurrence"] = val;
}

- (BOOL) isOutOfDate
{
    _isOutOfDate = [self.dictionary[@"isOutOfDate"] boolValue];
    return _isOutOfDate;
}

- (void) setIsOutOfDate: (BOOL) val
{
    _isOutOfDate = val;
    self.dictionary[@"isOutOfDate"] = @(val);
}

- (BOOL) isAllDay
{
    _isAllDay = [self.dictionary[@"isAllDay"] boolValue];
    return _isAllDay;
}

- (void) setIsAllDay: (BOOL) val
{
    _isAllDay = val;
    self.dictionary[@"isAllDay"] = @(val);
}

- (BOOL) isDelegated
{
    _isDelegated = [self.dictionary[@"isDelegated"] boolValue];
    return _isDelegated;
}

- (void) setIsDelegated: (BOOL) val
{
    _isDelegated = val;
    self.dictionary[@"isDelegated"] = @(val);
}

- (MSGraphEvent*) event
{
    if(!_event){
        _event = [[MSGraphEvent alloc] initWithDictionary: self.dictionary[@"event"]];
    }
    return _event;
}

- (void) setEvent: (MSGraphEvent*) val
{
    _event = val;
    self.dictionary[@"event"] = val;
}


@end
