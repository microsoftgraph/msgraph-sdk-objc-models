// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphResultInfo; 
#import "MSGraphEdiscoveryCaseAction.h"
#import "MSGraphEdiscoveryCaseOperationStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphEdiscoveryCaseOperation : MSGraphEntity

  @property (nullable, nonatomic, setter=setAction:, getter=action) MSGraphEdiscoveryCaseAction* action;
    @property (nullable, nonatomic, setter=setCompletedDateTime:, getter=completedDateTime) NSDate* completedDateTime;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonatomic, setter=setPercentProgress:, getter=percentProgress) int32_t percentProgress;
    @property (nullable, nonatomic, setter=setResultInfo:, getter=resultInfo) MSGraphResultInfo* resultInfo;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphEdiscoveryCaseOperationStatus* status;
  
@end
