// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEducationResource; 


#import "MSGraphEntity.h"

@interface MSGraphEducationSubmissionResource : MSGraphEntity

  @property (nullable, nonatomic, setter=setAssignmentResourceUrl:, getter=assignmentResourceUrl) NSString* assignmentResourceUrl;
    @property (nullable, nonatomic, setter=setResource:, getter=resource) MSGraphEducationResource* resource;
  
@end
