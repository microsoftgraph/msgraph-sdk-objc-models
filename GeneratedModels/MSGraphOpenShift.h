// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphOpenShiftItem; 


#import "MSGraphChangeTrackedEntity.h"

@interface MSGraphOpenShift : MSGraphChangeTrackedEntity

  @property (nullable, nonatomic, setter=setSharedOpenShift:, getter=sharedOpenShift) MSGraphOpenShiftItem* sharedOpenShift;
    @property (nullable, nonatomic, setter=setDraftOpenShift:, getter=draftOpenShift) MSGraphOpenShiftItem* draftOpenShift;
    @property (nullable, nonatomic, setter=setSchedulingGroupId:, getter=schedulingGroupId) NSString* schedulingGroupId;
  
@end
