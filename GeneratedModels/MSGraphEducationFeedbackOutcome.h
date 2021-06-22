// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEducationFeedback; 


#import "MSGraphEducationOutcome.h"

@interface MSGraphEducationFeedbackOutcome : MSGraphEducationOutcome

  @property (nullable, nonatomic, setter=setFeedback:, getter=feedback) MSGraphEducationFeedback* feedback;
    @property (nullable, nonatomic, setter=setPublishedFeedback:, getter=publishedFeedback) MSGraphEducationFeedback* publishedFeedback;
  
@end
