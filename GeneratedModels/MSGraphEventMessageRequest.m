// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEventMessageRequest()
{
    MSGraphLocation* _previousLocation;
    MSGraphDateTimeTimeZone* _previousStartDateTime;
    MSGraphDateTimeTimeZone* _previousEndDateTime;
    BOOL _responseRequested;
    BOOL _allowNewTimeProposals;
    MSGraphMeetingRequestType* _meetingRequestType;
}
@end

@implementation MSGraphEventMessageRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.eventMessageRequest";
    }
    return self;
}
- (MSGraphLocation*) previousLocation
{
    if(!_previousLocation){
        _previousLocation = [[MSGraphLocation alloc] initWithDictionary: self.dictionary[@"previousLocation"]];
    }
    return _previousLocation;
}

- (void) setPreviousLocation: (MSGraphLocation*) val
{
    _previousLocation = val;
    self.dictionary[@"previousLocation"] = val;
}

- (MSGraphDateTimeTimeZone*) previousStartDateTime
{
    if(!_previousStartDateTime){
        _previousStartDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"previousStartDateTime"]];
    }
    return _previousStartDateTime;
}

- (void) setPreviousStartDateTime: (MSGraphDateTimeTimeZone*) val
{
    _previousStartDateTime = val;
    self.dictionary[@"previousStartDateTime"] = val;
}

- (MSGraphDateTimeTimeZone*) previousEndDateTime
{
    if(!_previousEndDateTime){
        _previousEndDateTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"previousEndDateTime"]];
    }
    return _previousEndDateTime;
}

- (void) setPreviousEndDateTime: (MSGraphDateTimeTimeZone*) val
{
    _previousEndDateTime = val;
    self.dictionary[@"previousEndDateTime"] = val;
}

- (BOOL) responseRequested
{
    _responseRequested = [self.dictionary[@"responseRequested"] boolValue];
    return _responseRequested;
}

- (void) setResponseRequested: (BOOL) val
{
    _responseRequested = val;
    self.dictionary[@"responseRequested"] = @(val);
}

- (BOOL) allowNewTimeProposals
{
    _allowNewTimeProposals = [self.dictionary[@"allowNewTimeProposals"] boolValue];
    return _allowNewTimeProposals;
}

- (void) setAllowNewTimeProposals: (BOOL) val
{
    _allowNewTimeProposals = val;
    self.dictionary[@"allowNewTimeProposals"] = @(val);
}

- (MSGraphMeetingRequestType*) meetingRequestType
{
    if(!_meetingRequestType){
        _meetingRequestType = [self.dictionary[@"meetingRequestType"] toMSGraphMeetingRequestType];
    }
    return _meetingRequestType;
}

- (void) setMeetingRequestType: (MSGraphMeetingRequestType*) val
{
    _meetingRequestType = val;
    self.dictionary[@"meetingRequestType"] = val;
}


@end
