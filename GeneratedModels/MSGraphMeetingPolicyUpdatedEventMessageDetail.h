// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSGraphEventMessageDetail.h"

@interface MSGraphMeetingPolicyUpdatedEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;
@property (nonatomic, setter=setMeetingChatEnabled:, getter=meetingChatEnabled) BOOL meetingChatEnabled;
@property (nullable, nonatomic, setter=setMeetingChatId:, getter=meetingChatId) NSString* meetingChatId;

@end
