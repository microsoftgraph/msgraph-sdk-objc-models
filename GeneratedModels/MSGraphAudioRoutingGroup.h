// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphRoutingMode.h"


#import "MSGraphEntity.h"

@interface MSGraphAudioRoutingGroup : MSGraphEntity

  @property (nullable, nonatomic, setter=setReceivers:, getter=receivers) NSArray* receivers;
    @property (nonnull, nonatomic, setter=setRoutingMode:, getter=routingMode) MSGraphRoutingMode* routingMode;
    @property (nullable, nonatomic, setter=setSources:, getter=sources) NSArray* sources;
  
@end
