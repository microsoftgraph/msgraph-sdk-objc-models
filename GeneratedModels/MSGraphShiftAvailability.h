// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphPatternedRecurrence, MSGraphTimeRange; 


#import "MSObject.h"

@interface MSGraphShiftAvailability : MSObject

@property (nullable, nonatomic, setter=setRecurrence:, getter=recurrence) MSGraphPatternedRecurrence* recurrence;
@property (nullable, nonatomic, setter=setTimeZone:, getter=timeZone) NSString* timeZone;
@property (nullable, nonatomic, setter=setTimeSlots:, getter=timeSlots) NSArray* timeSlots;

@end
