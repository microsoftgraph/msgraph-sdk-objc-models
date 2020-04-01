// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphTimeOffReasonIconType.h"


#import "MSGraphChangeTrackedEntity.h"

@interface MSGraphTimeOffReason : MSGraphChangeTrackedEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setIconType:, getter=iconType) MSGraphTimeOffReasonIconType* iconType;
    @property (nonatomic, setter=setIsActive:, getter=isActive) BOOL isActive;
  
@end
