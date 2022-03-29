// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUserIdentity, MSGraphAccessReviewHistoryScheduleSettings, MSGraphAccessReviewScope, MSGraphAccessReviewHistoryInstance; 
#import "MSGraphAccessReviewHistoryDecisionFilter.h"
#import "MSGraphAccessReviewHistoryStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphAccessReviewHistoryDefinition : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphUserIdentity* createdBy;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDecisions:, getter=decisions) NSArray* decisions;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonnull, nonatomic, setter=setReviewHistoryPeriodEndDateTime:, getter=reviewHistoryPeriodEndDateTime) NSDate* reviewHistoryPeriodEndDateTime;
    @property (nonnull, nonatomic, setter=setReviewHistoryPeriodStartDateTime:, getter=reviewHistoryPeriodStartDateTime) NSDate* reviewHistoryPeriodStartDateTime;
    @property (nullable, nonatomic, setter=setScheduleSettings:, getter=scheduleSettings) MSGraphAccessReviewHistoryScheduleSettings* scheduleSettings;
    @property (nonnull, nonatomic, setter=setScopes:, getter=scopes) NSArray* scopes;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphAccessReviewHistoryStatus* status;
    @property (nullable, nonatomic, setter=setInstances:, getter=instances) NSArray* instances;
  
@end
