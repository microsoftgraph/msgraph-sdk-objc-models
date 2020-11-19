// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAudioConferencing, MSGraphChatInfo, MSGraphItemBody, MSGraphLobbyBypassSettings, MSGraphMeetingParticipants; 
#import "MSGraphOnlineMeetingPresenters.h"


#import "MSGraphEntity.h"

@interface MSGraphOnlineMeeting : MSGraphEntity

  @property (nullable, nonatomic, setter=setAllowedPresenters:, getter=allowedPresenters) MSGraphOnlineMeetingPresenters* allowedPresenters;
    @property (nullable, nonatomic, setter=setAudioConferencing:, getter=audioConferencing) MSGraphAudioConferencing* audioConferencing;
    @property (nullable, nonatomic, setter=setChatInfo:, getter=chatInfo) MSGraphChatInfo* chatInfo;
    @property (nullable, nonatomic, setter=setCreationDateTime:, getter=creationDateTime) NSDate* creationDateTime;
    @property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
    @property (nullable, nonatomic, setter=setExternalId:, getter=externalId) NSString* externalId;
    @property (nonatomic, setter=setIsEntryExitAnnounced:, getter=isEntryExitAnnounced) BOOL isEntryExitAnnounced;
    @property (nullable, nonatomic, setter=setJoinInformation:, getter=joinInformation) MSGraphItemBody* joinInformation;
    @property (nullable, nonatomic, setter=setJoinWebUrl:, getter=joinWebUrl) NSString* joinWebUrl;
    @property (nullable, nonatomic, setter=setLobbyBypassSettings:, getter=lobbyBypassSettings) MSGraphLobbyBypassSettings* lobbyBypassSettings;
    @property (nullable, nonatomic, setter=setParticipants:, getter=participants) MSGraphMeetingParticipants* participants;
    @property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
    @property (nullable, nonatomic, setter=setSubject:, getter=subject) NSString* subject;
    @property (nullable, nonatomic, setter=setVideoTeleconferenceId:, getter=videoTeleconferenceId) NSString* videoTeleconferenceId;
  
@end
