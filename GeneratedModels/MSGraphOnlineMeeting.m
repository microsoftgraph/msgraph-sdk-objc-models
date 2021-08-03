// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnlineMeeting()
{
    BOOL _allowAttendeeToEnableCamera;
    BOOL _allowAttendeeToEnableMic;
    MSGraphOnlineMeetingPresenters* _allowedPresenters;
    MSGraphMeetingChatMode* _allowMeetingChat;
    BOOL _allowTeamworkReactions;
    MSGraphAudioConferencing* _audioConferencing;
    MSGraphChatInfo* _chatInfo;
    NSDate* _creationDateTime;
    NSDate* _endDateTime;
    NSString* _externalId;
    BOOL _isEntryExitAnnounced;
    MSGraphItemBody* _joinInformation;
    NSString* _joinWebUrl;
    MSGraphLobbyBypassSettings* _lobbyBypassSettings;
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
- (BOOL) allowAttendeeToEnableCamera
{
    _allowAttendeeToEnableCamera = [self.dictionary[@"allowAttendeeToEnableCamera"] boolValue];
    return _allowAttendeeToEnableCamera;
}

- (void) setAllowAttendeeToEnableCamera: (BOOL) val
{
    _allowAttendeeToEnableCamera = val;
    self.dictionary[@"allowAttendeeToEnableCamera"] = @(val);
}

- (BOOL) allowAttendeeToEnableMic
{
    _allowAttendeeToEnableMic = [self.dictionary[@"allowAttendeeToEnableMic"] boolValue];
    return _allowAttendeeToEnableMic;
}

- (void) setAllowAttendeeToEnableMic: (BOOL) val
{
    _allowAttendeeToEnableMic = val;
    self.dictionary[@"allowAttendeeToEnableMic"] = @(val);
}

- (MSGraphOnlineMeetingPresenters*) allowedPresenters
{
    if(!_allowedPresenters){
        _allowedPresenters = [self.dictionary[@"allowedPresenters"] toMSGraphOnlineMeetingPresenters];
    }
    return _allowedPresenters;
}

- (void) setAllowedPresenters: (MSGraphOnlineMeetingPresenters*) val
{
    _allowedPresenters = val;
    self.dictionary[@"allowedPresenters"] = val;
}

- (MSGraphMeetingChatMode*) allowMeetingChat
{
    if(!_allowMeetingChat){
        _allowMeetingChat = [self.dictionary[@"allowMeetingChat"] toMSGraphMeetingChatMode];
    }
    return _allowMeetingChat;
}

- (void) setAllowMeetingChat: (MSGraphMeetingChatMode*) val
{
    _allowMeetingChat = val;
    self.dictionary[@"allowMeetingChat"] = val;
}

- (BOOL) allowTeamworkReactions
{
    _allowTeamworkReactions = [self.dictionary[@"allowTeamworkReactions"] boolValue];
    return _allowTeamworkReactions;
}

- (void) setAllowTeamworkReactions: (BOOL) val
{
    _allowTeamworkReactions = val;
    self.dictionary[@"allowTeamworkReactions"] = @(val);
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

- (BOOL) isEntryExitAnnounced
{
    _isEntryExitAnnounced = [self.dictionary[@"isEntryExitAnnounced"] boolValue];
    return _isEntryExitAnnounced;
}

- (void) setIsEntryExitAnnounced: (BOOL) val
{
    _isEntryExitAnnounced = val;
    self.dictionary[@"isEntryExitAnnounced"] = @(val);
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

- (MSGraphLobbyBypassSettings*) lobbyBypassSettings
{
    if(!_lobbyBypassSettings){
        _lobbyBypassSettings = [[MSGraphLobbyBypassSettings alloc] initWithDictionary: self.dictionary[@"lobbyBypassSettings"]];
    }
    return _lobbyBypassSettings;
}

- (void) setLobbyBypassSettings: (MSGraphLobbyBypassSettings*) val
{
    _lobbyBypassSettings = val;
    self.dictionary[@"lobbyBypassSettings"] = val;
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
