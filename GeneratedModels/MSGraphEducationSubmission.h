// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEducationSubmissionRecipient, MSGraphIdentitySet, MSGraphEducationOutcome, MSGraphEducationSubmissionResource; 
#import "MSGraphEducationSubmissionStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphEducationSubmission : MSGraphEntity

  @property (nullable, nonatomic, setter=setRecipient:, getter=recipient) MSGraphEducationSubmissionRecipient* recipient;
    @property (nullable, nonatomic, setter=setResourcesFolderUrl:, getter=resourcesFolderUrl) NSString* resourcesFolderUrl;
    @property (nullable, nonatomic, setter=setReturnedBy:, getter=returnedBy) MSGraphIdentitySet* returnedBy;
    @property (nullable, nonatomic, setter=setReturnedDateTime:, getter=returnedDateTime) NSDate* returnedDateTime;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphEducationSubmissionStatus* status;
    @property (nullable, nonatomic, setter=setSubmittedBy:, getter=submittedBy) MSGraphIdentitySet* submittedBy;
    @property (nullable, nonatomic, setter=setSubmittedDateTime:, getter=submittedDateTime) NSDate* submittedDateTime;
    @property (nullable, nonatomic, setter=setUnsubmittedBy:, getter=unsubmittedBy) MSGraphIdentitySet* unsubmittedBy;
    @property (nullable, nonatomic, setter=setUnsubmittedDateTime:, getter=unsubmittedDateTime) NSDate* unsubmittedDateTime;
    @property (nullable, nonatomic, setter=setOutcomes:, getter=outcomes) NSArray* outcomes;
    @property (nullable, nonatomic, setter=setResources:, getter=resources) NSArray* resources;
    @property (nullable, nonatomic, setter=setSubmittedResources:, getter=submittedResources) NSArray* submittedResources;
  
@end
