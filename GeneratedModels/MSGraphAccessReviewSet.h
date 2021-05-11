// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAccessReviewScheduleDefinition; 


#import "MSGraphEntity.h"

@interface MSGraphAccessReviewSet : MSGraphEntity

  @property (nullable, nonatomic, setter=setDefinitions:, getter=definitions) NSArray* definitions;
  
@end
