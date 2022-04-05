// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSTimeOfDay; 


#import "MSObject.h"

@interface MSGraphBookingWorkTimeSlot : MSObject

@property (nonnull, nonatomic, setter=setEndTime:, getter=endTime) MSTimeOfDay* endTime;
@property (nonnull, nonatomic, setter=setStartTime:, getter=startTime) MSTimeOfDay* startTime;

@end
