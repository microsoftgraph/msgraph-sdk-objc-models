// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSObject.h"

@interface MSGraphEducationAssignmentGrade : MSObject

@property (nullable, nonatomic, setter=setGradedBy:, getter=gradedBy) MSGraphIdentitySet* gradedBy;
@property (nullable, nonatomic, setter=setGradedDateTime:, getter=gradedDateTime) NSDate* gradedDateTime;

@end
