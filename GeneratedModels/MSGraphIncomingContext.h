// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSObject.h"

@interface MSGraphIncomingContext : MSObject

@property (nullable, nonatomic, setter=setSourceParticipantId:, getter=sourceParticipantId) NSString* sourceParticipantId;
@property (nullable, nonatomic, setter=setObservedParticipantId:, getter=observedParticipantId) NSString* observedParticipantId;
@property (nullable, nonatomic, setter=setOnBehalfOf:, getter=onBehalfOf) MSGraphIdentitySet* onBehalfOf;
@property (nullable, nonatomic, setter=setTransferor:, getter=transferor) MSGraphIdentitySet* transferor;

@end
