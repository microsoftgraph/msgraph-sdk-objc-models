// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphParticipantJoiningResponse.h"

@interface MSGraphInviteNewBotResponse : MSGraphParticipantJoiningResponse

@property (nullable, nonatomic, setter=setInviteUri:, getter=inviteUri) NSString* inviteUri;

@end
