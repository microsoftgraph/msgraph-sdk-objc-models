// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUserIdentity, MSGraphIdentity, MSGraphAccessReviewInstanceDecisionItemResource; 


#import "MSGraphEntity.h"

@interface MSGraphAccessReviewInstanceDecisionItem : MSGraphEntity

  @property (nonnull, nonatomic, setter=setAccessReviewId:, getter=accessReviewId) NSString* accessReviewId;
    @property (nullable, nonatomic, setter=setAppliedBy:, getter=appliedBy) MSGraphUserIdentity* appliedBy;
    @property (nullable, nonatomic, setter=setAppliedDateTime:, getter=appliedDateTime) NSDate* appliedDateTime;
    @property (nullable, nonatomic, setter=setApplyResult:, getter=applyResult) NSString* applyResult;
    @property (nullable, nonatomic, setter=setDecision:, getter=decision) NSString* decision;
    @property (nullable, nonatomic, setter=setJustification:, getter=justification) NSString* justification;
    @property (nullable, nonatomic, setter=setPrincipal:, getter=principal) MSGraphIdentity* principal;
    @property (nullable, nonatomic, setter=setPrincipalLink:, getter=principalLink) NSString* principalLink;
    @property (nullable, nonatomic, setter=setRecommendation:, getter=recommendation) NSString* recommendation;
    @property (nullable, nonatomic, setter=setResource:, getter=resource) MSGraphAccessReviewInstanceDecisionItemResource* resource;
    @property (nullable, nonatomic, setter=setResourceLink:, getter=resourceLink) NSString* resourceLink;
    @property (nullable, nonatomic, setter=setReviewedBy:, getter=reviewedBy) MSGraphUserIdentity* reviewedBy;
    @property (nullable, nonatomic, setter=setReviewedDateTime:, getter=reviewedDateTime) NSDate* reviewedDateTime;
  
@end
