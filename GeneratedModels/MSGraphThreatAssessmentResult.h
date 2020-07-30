// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphThreatAssessmentResultType.h"


#import "MSGraphEntity.h"

@interface MSGraphThreatAssessmentResult : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setResultType:, getter=resultType) MSGraphThreatAssessmentResultType* resultType;
    @property (nullable, nonatomic, setter=setMessage:, getter=message) NSString* message;
  
@end
