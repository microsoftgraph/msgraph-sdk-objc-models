// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet, MSGraphEducationItemBody; 


#import "MSObject.h"

@interface MSGraphEducationFeedback : MSObject

@property (nullable, nonatomic, setter=setFeedbackBy:, getter=feedbackBy) MSGraphIdentitySet* feedbackBy;
@property (nullable, nonatomic, setter=setFeedbackDateTime:, getter=feedbackDateTime) NSDate* feedbackDateTime;
@property (nullable, nonatomic, setter=setText:, getter=text) MSGraphEducationItemBody* text;

@end
