// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphParticipantInfo, MSGraphMediaStream, MSGraphRecordingInfo; 


#import "MSGraphEntity.h"

@interface MSGraphParticipant : MSGraphEntity

  @property (nonnull, nonatomic, setter=setInfo:, getter=info) MSGraphParticipantInfo* info;
    @property (nonatomic, setter=setIsInLobby:, getter=isInLobby) BOOL isInLobby;
    @property (nonatomic, setter=setIsMuted:, getter=isMuted) BOOL isMuted;
    @property (nullable, nonatomic, setter=setMediaStreams:, getter=mediaStreams) NSArray* mediaStreams;
    @property (nullable, nonatomic, setter=setRecordingInfo:, getter=recordingInfo) MSGraphRecordingInfo* recordingInfo;
  
@end
