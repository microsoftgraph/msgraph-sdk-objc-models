// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrintTaskDefinition; 
#import "MSGraphPrintEvent.h"


#import "MSGraphEntity.h"

@interface MSGraphPrintTaskTrigger : MSGraphEntity

  @property (nonnull, nonatomic, setter=setEvent:, getter=event) MSGraphPrintEvent* event;
    @property (nonnull, nonatomic, setter=setDefinition:, getter=definition) MSGraphPrintTaskDefinition* definition;
  
@end
