// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphCall; 


#import "MSGraphEntity.h"

@interface MSGraphParticipantLeftNotification : MSGraphEntity

  @property (nonnull, nonatomic, setter=setParticipantId:, getter=participantId) NSString* participantId;
    @property (nullable, nonatomic, setter=setCall:, getter=call) MSGraphCall* call;
  
@end
