// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRejectReason.h"


#import "MSGraphParticipantJoiningResponse.h"

@interface MSGraphRejectJoinResponse : MSGraphParticipantJoiningResponse

@property (nonnull, nonatomic, setter=setReason:, getter=reason) MSGraphRejectReason* reason;

@end
