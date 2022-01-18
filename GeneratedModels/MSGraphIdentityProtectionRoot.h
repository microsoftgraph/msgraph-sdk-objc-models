// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRiskDetection, MSGraphRiskyUser; 


#import "MSObject.h"

@interface MSGraphIdentityProtectionRoot : MSObject

  @property (nullable, nonatomic, setter=setODataType:, getter=oDataType) NSString *oDataType;
  @property (nullable, nonatomic, setter=setODataEtag:, getter=oDataEtag) NSString *oDataEtag;
  @property (nullable, nonatomic, setter=setRiskDetections:, getter=riskDetections) NSArray* riskDetections;
    @property (nullable, nonatomic, setter=setRiskyUsers:, getter=riskyUsers) NSArray* riskyUsers;
  
@end
