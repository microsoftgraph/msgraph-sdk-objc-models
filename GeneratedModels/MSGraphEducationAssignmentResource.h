// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEducationResource; 


#import "MSGraphEntity.h"

@interface MSGraphEducationAssignmentResource : MSGraphEntity

  @property (nonatomic, setter=setDistributeForStudentWork:, getter=distributeForStudentWork) BOOL distributeForStudentWork;
    @property (nullable, nonatomic, setter=setResource:, getter=resource) MSGraphEducationResource* resource;
  
@end
