// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphChangeTrackedEntity.h"

@interface MSGraphSchedulingGroup : MSGraphChangeTrackedEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsActive:, getter=isActive) BOOL isActive;
    @property (nullable, nonatomic, setter=setUserIds:, getter=userIds) NSArray* userIds;
  
@end
