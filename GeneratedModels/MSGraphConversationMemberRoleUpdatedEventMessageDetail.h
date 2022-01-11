// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphTeamworkUserIdentity, MSGraphIdentitySet; 


#import "MSGraphEventMessageDetail.h"

@interface MSGraphConversationMemberRoleUpdatedEventMessageDetail : MSGraphEventMessageDetail

@property (nullable, nonatomic, setter=setConversationMemberRoles:, getter=conversationMemberRoles) NSArray* conversationMemberRoles;
@property (nullable, nonatomic, setter=setConversationMemberUser:, getter=conversationMemberUser) MSGraphTeamworkUserIdentity* conversationMemberUser;
@property (nullable, nonatomic, setter=setInitiator:, getter=initiator) MSGraphIdentitySet* initiator;

@end
