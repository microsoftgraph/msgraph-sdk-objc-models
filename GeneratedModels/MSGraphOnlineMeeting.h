// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAudioConferencing, MSGraphBroadcastMeetingSettings, MSGraphChatInfo, MSGraphItemBody, MSGraphLobbyBypassSettings, MSGraphMeetingParticipants; 
#import "MSGraphOnlineMeetingPresenters.h"
#import "MSGraphMeetingChatMode.h"


#import "MSGraphEntity.h"

@interface MSGraphOnlineMeeting : MSGraphEntity

  @property (nonatomic, setter=setAllowAttendeeToEnableCamera:, getter=allowAttendeeToEnableCamera) BOOL allowAttendeeToEnableCamera;
    @property (nonatomic, setter=setAllowAttendeeToEnableMic:, getter=allowAttendeeToEnableMic) BOOL allowAttendeeToEnableMic;
    @property (nullable, nonatomic, setter=setAllowedPresenters:, getter=allowedPresenters) MSGraphOnlineMeetingPresenters* allowedPresenters;
    @property (nullable, nonatomic, setter=setAllowMeetingChat:, getter=allowMeetingChat) MSGraphMeetingChatMode* allowMeetingChat;
    @property (nonatomic, setter=setAllowTeamworkReactions:, getter=allowTeamworkReactions) BOOL allowTeamworkReactions;
    @property (nullable, nonatomic, setter=setAudioConferencing:, getter=audioConferencing) MSGraphAudioConferencing* audioConferencing;
    @property (nullable, nonatomic, setter=setBroadcastSettings:, getter=broadcastSettings) MSGraphBroadcastMeetingSettings* broadcastSettings;
    @property (nullable, nonatomic, setter=setChatInfo:, getter=chatInfo) MSGraphChatInfo* chatInfo;
    @property (nullable, nonatomic, setter=setCreationDateTime:, getter=creationDateTime) NSDate* creationDateTime;
    @property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
    @property (nullable, nonatomic, setter=setExternalId:, getter=externalId) NSString* externalId;
    @property (nonatomic, setter=setIsBroadcast:, getter=isBroadcast) BOOL isBroadcast;
    @property (nonatomic, setter=setIsEntryExitAnnounced:, getter=isEntryExitAnnounced) BOOL isEntryExitAnnounced;
    @property (nullable, nonatomic, setter=setJoinInformation:, getter=joinInformation) MSGraphItemBody* joinInformation;
    @property (nullable, nonatomic, setter=setJoinWebUrl:, getter=joinWebUrl) NSString* joinWebUrl;
    @property (nullable, nonatomic, setter=setLobbyBypassSettings:, getter=lobbyBypassSettings) MSGraphLobbyBypassSettings* lobbyBypassSettings;
    @property (nullable, nonatomic, setter=setParticipants:, getter=participants) MSGraphMeetingParticipants* participants;
    @property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
    @property (nullable, nonatomic, setter=setSubject:, getter=subject) NSString* subject;
    @property (nullable, nonatomic, setter=setVideoTeleconferenceId:, getter=videoTeleconferenceId) NSString* videoTeleconferenceId;
  
@end
