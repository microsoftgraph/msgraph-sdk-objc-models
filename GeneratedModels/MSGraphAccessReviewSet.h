// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAccessReviewScheduleDefinition, MSGraphAccessReviewHistoryDefinition; 


#import "MSGraphEntity.h"

@interface MSGraphAccessReviewSet : MSGraphEntity

  @property (nullable, nonatomic, setter=setDefinitions:, getter=definitions) NSArray* definitions;
    @property (nullable, nonatomic, setter=setHistoryDefinitions:, getter=historyDefinitions) NSArray* historyDefinitions;
  
@end
