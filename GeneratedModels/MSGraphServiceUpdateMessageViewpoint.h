// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphServiceUpdateMessageViewpoint : MSObject

@property (nonatomic, setter=setIsArchived:, getter=isArchived) BOOL isArchived;
@property (nonatomic, setter=setIsFavorited:, getter=isFavorited) BOOL isFavorited;
@property (nonatomic, setter=setIsRead:, getter=isRead) BOOL isRead;

@end
