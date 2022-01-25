// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSObject.h"

@interface MSGraphInvitationParticipantInfo : MSObject

@property (nonatomic, setter=setHidden:, getter=hidden) BOOL hidden;
@property (nonnull, nonatomic, setter=setIdentity:, getter=identity) MSGraphIdentitySet* identity;
@property (nullable, nonatomic, setter=setParticipantId:, getter=participantId) NSString* participantId;
@property (nonatomic, setter=setRemoveFromDefaultAudioRoutingGroup:, getter=removeFromDefaultAudioRoutingGroup) BOOL removeFromDefaultAudioRoutingGroup;
@property (nullable, nonatomic, setter=setReplacesCallId:, getter=replacesCallId) NSString* replacesCallId;

@end
