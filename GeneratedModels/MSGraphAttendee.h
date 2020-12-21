// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphTimeSlot, MSGraphResponseStatus; 


#import "MSGraphAttendeeBase.h"

@interface MSGraphAttendee : MSGraphAttendeeBase

@property (nullable, nonatomic, setter=setProposedNewTime:, getter=proposedNewTime) MSGraphTimeSlot* proposedNewTime;
@property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphResponseStatus* status;

@end
