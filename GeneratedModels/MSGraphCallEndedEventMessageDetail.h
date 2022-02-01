// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration, MSGraphCallParticipantInfo, MSGraphIdentitySet; 
#import "MSGraphTeamworkCallEventType.h"


#import "MSGraphEventMessageDetail.h"

@interface MSGraphCallEndedEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setCallDuration:, getter=callDuration) MSDuration* callDuration;
@property (nullable, nonatomic, setter=setCallEventType:, getter=callEventType) MSGraphTeamworkCallEventType* callEventType;
@property (nullable, nonatomic, setter=setCallId:, getter=callId) NSString* callId;
@property (nullable, nonatomic, setter=setCallParticipants:, getter=callParticipants) NSArray* callParticipants;
@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;

@end
