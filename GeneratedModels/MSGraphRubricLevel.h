// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphEducationItemBody, MSGraphEducationAssignmentGradeType; 


#import "MSObject.h"

@interface MSGraphRubricLevel : MSObject

@property (nullable, nonatomic, setter=setRubricLevelDescription:, getter=rubricLevelDescription) MSGraphEducationItemBody* rubricLevelDescription;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setGrading:, getter=grading) MSGraphEducationAssignmentGradeType* grading;
@property (nullable, nonatomic, setter=setLevelId:, getter=levelId) NSString* levelId;

@end
