// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAccessReviewApplyAction, MSGraphPatternedRecurrence; 


#import "MSObject.h"

@interface MSGraphAccessReviewScheduleSettings : MSObject

@property (nullable, nonatomic, setter=setApplyActions:, getter=applyActions) NSArray* applyActions;
@property (nonatomic, setter=setAutoApplyDecisionsEnabled:, getter=autoApplyDecisionsEnabled) BOOL autoApplyDecisionsEnabled;
@property (nullable, nonatomic, setter=setDefaultDecision:, getter=defaultDecision) NSString* defaultDecision;
@property (nonatomic, setter=setDefaultDecisionEnabled:, getter=defaultDecisionEnabled) BOOL defaultDecisionEnabled;
@property (nonatomic, setter=setInstanceDurationInDays:, getter=instanceDurationInDays) int32_t instanceDurationInDays;
@property (nonatomic, setter=setJustificationRequiredOnApproval:, getter=justificationRequiredOnApproval) BOOL justificationRequiredOnApproval;
@property (nonatomic, setter=setMailNotificationsEnabled:, getter=mailNotificationsEnabled) BOOL mailNotificationsEnabled;
@property (nonatomic, setter=setRecommendationsEnabled:, getter=recommendationsEnabled) BOOL recommendationsEnabled;
@property (nullable, nonatomic, setter=setRecurrence:, getter=recurrence) MSGraphPatternedRecurrence* recurrence;
@property (nonatomic, setter=setReminderNotificationsEnabled:, getter=reminderNotificationsEnabled) BOOL reminderNotificationsEnabled;

@end
