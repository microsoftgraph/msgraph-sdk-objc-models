// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRecordingEventMessageDetail()
{
    NSString* _callId;
    NSString* _callRecordingDisplayName;
    MSDuration* _callRecordingDuration;
    MSGraphCallRecordingStatus* _callRecordingStatus;
    NSString* _callRecordingUrl;
    MSGraphIdentitySet* _initiator;
    MSGraphIdentitySet* _meetingOrganizer;
}
@end

@implementation MSGraphCallRecordingEventMessageDetail

- (NSString*) callId
{
    if([[NSNull null] isEqual:self.dictionary[@"callId"]])
    {
        return nil;
    }   
    return self.dictionary[@"callId"];
}

- (void) setCallId: (NSString*) val
{
    self.dictionary[@"callId"] = val;
}

- (NSString*) callRecordingDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"callRecordingDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"callRecordingDisplayName"];
}

- (void) setCallRecordingDisplayName: (NSString*) val
{
    self.dictionary[@"callRecordingDisplayName"] = val;
}

- (MSDuration*) callRecordingDuration
{
    if(!_callRecordingDuration){
        _callRecordingDuration = [MSDuration ms_durationFromString: self.dictionary[@"callRecordingDuration"]];
    }
    return _callRecordingDuration;
}

- (void) setCallRecordingDuration: (MSDuration*) val
{
    _callRecordingDuration = val;
    self.dictionary[@"callRecordingDuration"] = val.durationString;
}

- (MSGraphCallRecordingStatus*) callRecordingStatus
{
    if(!_callRecordingStatus){
        _callRecordingStatus = [self.dictionary[@"callRecordingStatus"] toMSGraphCallRecordingStatus];
    }
    return _callRecordingStatus;
}

- (void) setCallRecordingStatus: (MSGraphCallRecordingStatus*) val
{
    _callRecordingStatus = val;
    self.dictionary[@"callRecordingStatus"] = val;
}

- (NSString*) callRecordingUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"callRecordingUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"callRecordingUrl"];
}

- (void) setCallRecordingUrl: (NSString*) val
{
    self.dictionary[@"callRecordingUrl"] = val;
}

- (MSGraphIdentitySet*) initiator
{
    if(!_initiator){
        _initiator = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"initiator"]];
    }
    return _initiator;
}

- (void) setInitiator: (MSGraphIdentitySet*) val
{
    _initiator = val;
    self.dictionary[@"initiator"] = val;
}

- (MSGraphIdentitySet*) meetingOrganizer
{
    if(!_meetingOrganizer){
        _meetingOrganizer = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"meetingOrganizer"]];
    }
    return _meetingOrganizer;
}

- (void) setMeetingOrganizer: (MSGraphIdentitySet*) val
{
    _meetingOrganizer = val;
    self.dictionary[@"meetingOrganizer"] = val;
}

@end
