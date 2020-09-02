// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnlineMeeting()
{
    MSGraphAudioConferencing* _audioConferencing;
    MSGraphChatInfo* _chatInfo;
    NSDate* _creationDateTime;
    NSDate* _endDateTime;
    NSString* _externalId;
    MSGraphItemBody* _joinInformation;
    NSString* _joinWebUrl;
    MSGraphMeetingParticipants* _participants;
    NSDate* _startDateTime;
    NSString* _subject;
    NSString* _videoTeleconferenceId;
}
@end

@implementation MSGraphOnlineMeeting

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.onlineMeeting";
    }
    return self;
}
- (MSGraphAudioConferencing*) audioConferencing
{
    if(!_audioConferencing){
        _audioConferencing = [[MSGraphAudioConferencing alloc] initWithDictionary: self.dictionary[@"audioConferencing"]];
    }
    return _audioConferencing;
}

- (void) setAudioConferencing: (MSGraphAudioConferencing*) val
{
    _audioConferencing = val;
    self.dictionary[@"audioConferencing"] = val;
}

- (MSGraphChatInfo*) chatInfo
{
    if(!_chatInfo){
        _chatInfo = [[MSGraphChatInfo alloc] initWithDictionary: self.dictionary[@"chatInfo"]];
    }
    return _chatInfo;
}

- (void) setChatInfo: (MSGraphChatInfo*) val
{
    _chatInfo = val;
    self.dictionary[@"chatInfo"] = val;
}

- (NSDate*) creationDateTime
{
    if(!_creationDateTime){
        _creationDateTime = [NSDate ms_dateFromString: self.dictionary[@"creationDateTime"]];
    }
    return _creationDateTime;
}

- (void) setCreationDateTime: (NSDate*) val
{
    _creationDateTime = val;
    self.dictionary[@"creationDateTime"] = [val ms_toString];
}

- (NSDate*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [NSDate ms_dateFromString: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (NSDate*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = [val ms_toString];
}

- (NSString*) externalId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalId"];
}

- (void) setExternalId: (NSString*) val
{
    self.dictionary[@"externalId"] = val;
}

- (MSGraphItemBody*) joinInformation
{
    if(!_joinInformation){
        _joinInformation = [[MSGraphItemBody alloc] initWithDictionary: self.dictionary[@"joinInformation"]];
    }
    return _joinInformation;
}

- (void) setJoinInformation: (MSGraphItemBody*) val
{
    _joinInformation = val;
    self.dictionary[@"joinInformation"] = val;
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

- (MSGraphMeetingParticipants*) participants
{
    if(!_participants){
        _participants = [[MSGraphMeetingParticipants alloc] initWithDictionary: self.dictionary[@"participants"]];
    }
    return _participants;
}

- (void) setParticipants: (MSGraphMeetingParticipants*) val
{
    _participants = val;
    self.dictionary[@"participants"] = val;
}

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}

- (NSString*) subject
{
    if([[NSNull null] isEqual:self.dictionary[@"subject"]])
    {
        return nil;
    }   
    return self.dictionary[@"subject"];
}

- (void) setSubject: (NSString*) val
{
    self.dictionary[@"subject"] = val;
}

- (NSString*) videoTeleconferenceId
{
    if([[NSNull null] isEqual:self.dictionary[@"videoTeleconferenceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"videoTeleconferenceId"];
}

- (void) setVideoTeleconferenceId: (NSString*) val
{
    self.dictionary[@"videoTeleconferenceId"] = val;
}


@end
