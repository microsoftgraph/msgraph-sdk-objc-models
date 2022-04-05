// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAttendanceInterval : MSObject

@property (nonatomic, setter=setDurationInSeconds:, getter=durationInSeconds) int32_t durationInSeconds;
@property (nullable, nonatomic, setter=setJoinDateTime:, getter=joinDateTime) NSDate* joinDateTime;
@property (nullable, nonatomic, setter=setLeaveDateTime:, getter=leaveDateTime) NSDate* leaveDateTime;

@end
