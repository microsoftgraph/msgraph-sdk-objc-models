// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphShiftItem; 


#import "MSGraphChangeTrackedEntity.h"

@interface MSGraphShift : MSGraphChangeTrackedEntity

  @property (nullable, nonatomic, setter=setDraftShift:, getter=draftShift) MSGraphShiftItem* draftShift;
    @property (nullable, nonatomic, setter=setSchedulingGroupId:, getter=schedulingGroupId) NSString* schedulingGroupId;
    @property (nullable, nonatomic, setter=setSharedShift:, getter=sharedShift) MSGraphShiftItem* sharedShift;
    @property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
  
@end
