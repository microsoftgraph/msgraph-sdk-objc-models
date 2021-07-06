// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRubricQualityFeedbackModel, MSGraphRubricQualitySelectedColumnModel; 


#import "MSGraphEducationOutcome.h"

@interface MSGraphEducationRubricOutcome : MSGraphEducationOutcome

  @property (nullable, nonatomic, setter=setPublishedRubricQualityFeedback:, getter=publishedRubricQualityFeedback) NSArray* publishedRubricQualityFeedback;
    @property (nullable, nonatomic, setter=setPublishedRubricQualitySelectedLevels:, getter=publishedRubricQualitySelectedLevels) NSArray* publishedRubricQualitySelectedLevels;
    @property (nullable, nonatomic, setter=setRubricQualityFeedback:, getter=rubricQualityFeedback) NSArray* rubricQualityFeedback;
    @property (nullable, nonatomic, setter=setRubricQualitySelectedLevels:, getter=rubricQualitySelectedLevels) NSArray* rubricQualitySelectedLevels;
  
@end
