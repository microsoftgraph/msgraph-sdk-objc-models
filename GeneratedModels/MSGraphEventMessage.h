// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDateTimeTimeZone, MSGraphLocation, MSGraphPatternedRecurrence, MSGraphEvent; 
#import "MSGraphMeetingMessageType.h"
#import "MSGraphEventType.h"


#import "MSGraphMessage.h"

@interface MSGraphEventMessage : MSGraphMessage

  @property (nullable, nonatomic, setter=setMeetingMessageType:, getter=meetingMessageType) MSGraphMeetingMessageType* meetingMessageType;
    @property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) MSGraphDateTimeTimeZone* startDateTime;
    @property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) MSGraphDateTimeTimeZone* endDateTime;
    @property (nullable, nonatomic, setter=setLocation:, getter=location) MSGraphLocation* location;
    @property (nullable, nonatomic, setter=setType:, getter=type) MSGraphEventType* type;
    @property (nullable, nonatomic, setter=setRecurrence:, getter=recurrence) MSGraphPatternedRecurrence* recurrence;
    @property (nonatomic, setter=setIsOutOfDate:, getter=isOutOfDate) BOOL isOutOfDate;
    @property (nonatomic, setter=setIsAllDay:, getter=isAllDay) BOOL isAllDay;
    @property (nonatomic, setter=setIsDelegated:, getter=isDelegated) BOOL isDelegated;
    @property (nullable, nonatomic, setter=setEvent:, getter=event) MSGraphEvent* event;
  
@end
