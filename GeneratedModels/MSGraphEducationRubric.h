// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphEducationItemBody, MSGraphEducationAssignmentGradeType, MSGraphRubricLevel, MSGraphRubricQuality; 


#import "MSGraphEntity.h"

@interface MSGraphEducationRubric : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setEducationRubricDescription:, getter=educationRubricDescription) MSGraphEducationItemBody* educationRubricDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setGrading:, getter=grading) MSGraphEducationAssignmentGradeType* grading;
    @property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) MSGraphIdentitySet* lastModifiedBy;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setLevels:, getter=levels) NSArray* levels;
    @property (nullable, nonatomic, setter=setQualities:, getter=qualities) NSArray* qualities;
  
@end
