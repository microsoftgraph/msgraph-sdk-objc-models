// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphBookingWorkTimeSlot; 
#import "MSGraphDayOfWeek.h"


#import "MSObject.h"

@interface MSGraphBookingWorkHours : MSObject

@property (nonnull, nonatomic, setter=setDay:, getter=day) MSGraphDayOfWeek* day;
@property (nullable, nonatomic, setter=setTimeSlots:, getter=timeSlots) NSArray* timeSlots;

@end
