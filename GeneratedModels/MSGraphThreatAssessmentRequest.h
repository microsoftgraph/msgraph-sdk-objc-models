// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphThreatAssessmentResult; 
#import "MSGraphThreatCategory.h"
#import "MSGraphThreatAssessmentContentType.h"
#import "MSGraphThreatExpectedAssessment.h"
#import "MSGraphThreatAssessmentRequestSource.h"
#import "MSGraphThreatAssessmentStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphThreatAssessmentRequest : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCategory:, getter=category) MSGraphThreatCategory* category;
    @property (nullable, nonatomic, setter=setContentType:, getter=contentType) MSGraphThreatAssessmentContentType* contentType;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonnull, nonatomic, setter=setExpectedAssessment:, getter=expectedAssessment) MSGraphThreatExpectedAssessment* expectedAssessment;
    @property (nullable, nonatomic, setter=setRequestSource:, getter=requestSource) MSGraphThreatAssessmentRequestSource* requestSource;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphThreatAssessmentStatus* status;
    @property (nullable, nonatomic, setter=setResults:, getter=results) NSArray* results;
  
@end
