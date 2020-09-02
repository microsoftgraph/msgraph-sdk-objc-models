// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTimeOffItem; 


#import "MSGraphChangeTrackedEntity.h"

@interface MSGraphTimeOff : MSGraphChangeTrackedEntity

  @property (nullable, nonatomic, setter=setDraftTimeOff:, getter=draftTimeOff) MSGraphTimeOffItem* draftTimeOff;
    @property (nullable, nonatomic, setter=setSharedTimeOff:, getter=sharedTimeOff) MSGraphTimeOffItem* sharedTimeOff;
    @property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
  
@end
