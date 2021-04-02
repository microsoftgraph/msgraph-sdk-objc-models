// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet; 


#import "MSGraphEntity.h"

@interface MSGraphRequest : MSGraphEntity

  @property (nullable, nonatomic, setter=setApprovalId:, getter=approvalId) NSString* approvalId;
    @property (nullable, nonatomic, setter=setCompletedDateTime:, getter=completedDateTime) NSDate* completedDateTime;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setCustomData:, getter=customData) NSString* customData;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) NSString* status;
  
@end
