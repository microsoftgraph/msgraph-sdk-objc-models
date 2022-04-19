// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRiskDetail.h"


#import "MSObject.h"

@interface MSGraphRiskUserActivity : MSObject

@property (nullable, nonatomic, setter=setDetail:, getter=detail) MSGraphRiskDetail* detail;
@property (nullable, nonatomic, setter=setRiskEventTypes:, getter=riskEventTypes) NSArray* riskEventTypes;

@end
