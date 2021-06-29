// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphTeamworkConversationIdentity; 


#import "MSGraphIdentitySet.h"

@interface MSGraphChatMessageMentionedIdentitySet : MSGraphIdentitySet

@property (nullable, nonatomic, setter=setConversation:, getter=conversation) MSGraphTeamworkConversationIdentity* conversation;

@end
