// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 
#import "MSGraphTeamworkCallEventType.h"


#import "MSGraphEventMessageDetail.h"

@interface MSGraphCallStartedEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setCallEventType:, getter=callEventType) MSGraphTeamworkCallEventType* callEventType;
@property (nullable, nonatomic, setter=setCallId:, getter=callId) NSString* callId;
@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;

@end
