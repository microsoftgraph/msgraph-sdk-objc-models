// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration, MSGraphIdentitySet; 
#import "MSGraphCallRecordingStatus.h"


#import "MSGraphEventMessageDetail.h"

@interface MSGraphCallRecordingEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setCallId:, getter=callId) NSString* callId;
@property (nullable, nonatomic, setter=setCallRecordingDisplayName:, getter=callRecordingDisplayName) NSString* callRecordingDisplayName;
@property (nullable, nonatomic, setter=setCallRecordingDuration:, getter=callRecordingDuration) MSDuration* callRecordingDuration;
@property (nullable, nonatomic, setter=setCallRecordingStatus:, getter=callRecordingStatus) MSGraphCallRecordingStatus* callRecordingStatus;
@property (nullable, nonatomic, setter=setCallRecordingUrl:, getter=callRecordingUrl) NSString* callRecordingUrl;
@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;
@property (nullable, nonatomic, setter=setMeetingOrganizer:, getter=meetingOrganizer) MSGraphIdentitySet* meetingOrganizer;

@end
