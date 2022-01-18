// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDuration; 


#import "MSObject.h"

@interface MSGraphBookingSchedulingPolicy : MSObject

@property (nonatomic, setter=setAllowStaffSelection:, getter=allowStaffSelection) BOOL allowStaffSelection;
@property (nonnull, nonatomic, setter=setMaximumAdvance:, getter=maximumAdvance) MSDuration* maximumAdvance;
@property (nonnull, nonatomic, setter=setMinimumLeadTime:, getter=minimumLeadTime) MSDuration* minimumLeadTime;
@property (nonatomic, setter=setSendConfirmationsToOwner:, getter=sendConfirmationsToOwner) BOOL sendConfirmationsToOwner;
@property (nonnull, nonatomic, setter=setTimeSlotInterval:, getter=timeSlotInterval) MSDuration* timeSlotInterval;

@end
