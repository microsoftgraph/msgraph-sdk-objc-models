// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphSubjectSet, MSGraphEntitlementManagementSchedule; 
#import "MSGraphAccessReviewExpirationBehavior.h"


#import "MSObject.h"

@interface MSGraphAccessPackageAssignmentReviewSettings : MSObject

@property (nullable, nonatomic, setter=setExpirationBehavior:, getter=expirationBehavior) MSGraphAccessReviewExpirationBehavior* expirationBehavior;
@property (nullable, nonatomic, setter=setFallbackReviewers:, getter=fallbackReviewers) NSArray* fallbackReviewers;
@property (nonatomic, setter=setIsEnabled:, getter=isEnabled) BOOL isEnabled;
@property (nonatomic, setter=setIsRecommendationEnabled:, getter=isRecommendationEnabled) BOOL isRecommendationEnabled;
@property (nonatomic, setter=setIsReviewerJustificationRequired:, getter=isReviewerJustificationRequired) BOOL isReviewerJustificationRequired;
@property (nonatomic, setter=setIsSelfReview:, getter=isSelfReview) BOOL isSelfReview;
@property (nullable, nonatomic, setter=setPrimaryReviewers:, getter=primaryReviewers) NSArray* primaryReviewers;
@property (nullable, nonatomic, setter=setSchedule:, getter=schedule) MSGraphEntitlementManagementSchedule* schedule;

@end
