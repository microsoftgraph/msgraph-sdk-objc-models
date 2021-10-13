// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphBitlocker, MSGraphThreatAssessmentRequest; 


#import "MSGraphEntity.h"

@interface MSGraphInformationProtection : MSGraphEntity

  @property (nullable, nonatomic, setter=setBitlocker:, getter=bitlocker) MSGraphBitlocker* bitlocker;
    @property (nullable, nonatomic, setter=setThreatAssessmentRequests:, getter=threatAssessmentRequests) NSArray* threatAssessmentRequests;
  
@end
