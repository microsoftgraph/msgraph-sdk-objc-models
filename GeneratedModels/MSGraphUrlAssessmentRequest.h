// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphThreatAssessmentRequest.h"

@interface MSGraphUrlAssessmentRequest : MSGraphThreatAssessmentRequest

  @property (nonnull, nonatomic, setter=setUrl:, getter=url) NSString* url;
  
@end
