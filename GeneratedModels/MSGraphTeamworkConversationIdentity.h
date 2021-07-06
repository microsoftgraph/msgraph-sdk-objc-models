// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamworkConversationIdentityType.h"


#import "MSGraphIdentity.h"

@interface MSGraphTeamworkConversationIdentity : MSGraphIdentity

@property (nullable, nonatomic, setter=setConversationIdentityType:, getter=conversationIdentityType) MSGraphTeamworkConversationIdentityType* conversationIdentityType;

@end
