// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphResponseStatus, MSGraphTimeSlot; 


#import "MSGraphAttendeeBase.h"

@interface MSGraphAttendee : MSGraphAttendeeBase

@property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphResponseStatus* status;
@property (nullable, nonatomic, setter=setProposedNewTime:, getter=proposedNewTime) MSGraphTimeSlot* proposedNewTime;

@end
