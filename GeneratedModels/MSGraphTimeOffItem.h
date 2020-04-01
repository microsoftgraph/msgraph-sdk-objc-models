// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphScheduleEntity.h"

@interface MSGraphTimeOffItem : MSGraphScheduleEntity

@property (nullable, nonatomic, setter=setTimeOffReasonId:, getter=timeOffReasonId) NSString* timeOffReasonId;

@end
