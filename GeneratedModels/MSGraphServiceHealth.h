// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphServiceHealthIssue; 
#import "MSGraphServiceHealthStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphServiceHealth : MSGraphEntity

  @property (nonnull, nonatomic, setter=setService:, getter=service) NSString* service;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphServiceHealthStatus* status;
    @property (nullable, nonatomic, setter=setIssues:, getter=issues) NSArray* issues;
  
@end
