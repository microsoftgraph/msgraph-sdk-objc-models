// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphServiceHealth, MSGraphServiceHealthIssue, MSGraphServiceUpdateMessage; 


#import "MSGraphEntity.h"

@interface MSGraphServiceAnnouncement : MSGraphEntity

  @property (nullable, nonatomic, setter=setHealthOverviews:, getter=healthOverviews) NSArray* healthOverviews;
    @property (nullable, nonatomic, setter=setIssues:, getter=issues) NSArray* issues;
    @property (nullable, nonatomic, setter=setMessages:, getter=messages) NSArray* messages;
  
@end
