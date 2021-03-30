// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentity; 


#import "MSGraphEntity.h"

@interface MSGraphApprovalStage : MSGraphEntity

  @property (nonatomic, setter=setAssignedToMe:, getter=assignedToMe) BOOL assignedToMe;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setJustification:, getter=justification) NSString* justification;
    @property (nullable, nonatomic, setter=setReviewedBy:, getter=reviewedBy) MSGraphIdentity* reviewedBy;
    @property (nullable, nonatomic, setter=setReviewedDateTime:, getter=reviewedDateTime) NSDate* reviewedDateTime;
    @property (nullable, nonatomic, setter=setReviewResult:, getter=reviewResult) NSString* reviewResult;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) NSString* status;
  
@end
