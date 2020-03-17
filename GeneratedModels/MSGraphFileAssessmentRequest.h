// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphThreatAssessmentRequest.h"

@interface MSGraphFileAssessmentRequest : MSGraphThreatAssessmentRequest

  @property (nonnull, nonatomic, setter=setFileName:, getter=fileName) NSString* fileName;
    @property (nonnull, nonatomic, setter=setContentData:, getter=contentData) NSString* contentData;
  
@end
