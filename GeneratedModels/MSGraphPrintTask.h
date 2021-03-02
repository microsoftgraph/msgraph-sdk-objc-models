// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrintTaskStatus, MSGraphPrintTaskDefinition, MSGraphPrintTaskTrigger; 


#import "MSGraphEntity.h"

@interface MSGraphPrintTask : MSGraphEntity

  @property (nonnull, nonatomic, setter=setParentUrl:, getter=parentUrl) NSString* parentUrl;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphPrintTaskStatus* status;
    @property (nonnull, nonatomic, setter=setDefinition:, getter=definition) MSGraphPrintTaskDefinition* definition;
    @property (nonnull, nonatomic, setter=setTrigger:, getter=trigger) MSGraphPrintTaskTrigger* trigger;
  
@end
