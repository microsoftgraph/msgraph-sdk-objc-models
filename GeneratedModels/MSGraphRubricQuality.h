// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphRubricCriterion, MSGraphEducationItemBody; 


#import "MSObject.h"

@interface MSGraphRubricQuality : MSObject

@property (nullable, nonatomic, setter=setCriteria:, getter=criteria) NSArray* criteria;
@property (nullable, nonatomic, setter=setRubricQualityDescription:, getter=rubricQualityDescription) MSGraphEducationItemBody* rubricQualityDescription;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setQualityId:, getter=qualityId) NSString* qualityId;
@property (nonatomic, setter=setWeight:, getter=weight) double weight;

@end
