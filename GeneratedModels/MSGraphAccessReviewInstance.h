// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAccessReviewReviewerScope, MSGraphAccessReviewScope, MSGraphAccessReviewInstanceDecisionItem; 


#import "MSGraphEntity.h"

@interface MSGraphAccessReviewInstance : MSGraphEntity

  @property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
    @property (nullable, nonatomic, setter=setFallbackReviewers:, getter=fallbackReviewers) NSArray* fallbackReviewers;
    @property (nullable, nonatomic, setter=setReviewers:, getter=reviewers) NSArray* reviewers;
    @property (nullable, nonatomic, setter=setScope:, getter=scope) MSGraphAccessReviewScope* scope;
    @property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) NSString* status;
    @property (nullable, nonatomic, setter=setDecisions:, getter=decisions) NSArray* decisions;
  
@end
