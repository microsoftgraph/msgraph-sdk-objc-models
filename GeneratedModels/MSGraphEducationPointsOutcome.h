// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEducationAssignmentPointsGrade; 


#import "MSGraphEducationOutcome.h"

@interface MSGraphEducationPointsOutcome : MSGraphEducationOutcome

  @property (nullable, nonatomic, setter=setPoints:, getter=points) MSGraphEducationAssignmentPointsGrade* points;
    @property (nullable, nonatomic, setter=setPublishedPoints:, getter=publishedPoints) MSGraphEducationAssignmentPointsGrade* publishedPoints;
  
@end
