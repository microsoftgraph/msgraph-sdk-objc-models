// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphEducationItemBody; 


#import "MSObject.h"

@interface MSGraphRubricQualityFeedbackModel : MSObject

@property (nullable, nonatomic, setter=setFeedback:, getter=feedback) MSGraphEducationItemBody* feedback;
@property (nullable, nonatomic, setter=setQualityId:, getter=qualityId) NSString* qualityId;

@end
