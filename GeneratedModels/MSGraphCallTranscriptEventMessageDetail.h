// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSGraphEventMessageDetail.h"

@interface MSGraphCallTranscriptEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setCallId:, getter=callId) NSString* callId;
@property (nullable, nonatomic, setter=setCallTranscriptICalUid:, getter=callTranscriptICalUid) NSString* callTranscriptICalUid;
@property (nullable, nonatomic, setter=setMeetingOrganizer:, getter=meetingOrganizer) MSGraphIdentitySet* meetingOrganizer;

@end
