// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphLocation, MSGraphDateTimeTimeZone; 
#import "MSGraphMeetingRequestType.h"


#import "MSGraphEventMessage.h"

@interface MSGraphEventMessageRequest : MSGraphEventMessage

  @property (nullable, nonatomic, setter=setPreviousLocation:, getter=previousLocation) MSGraphLocation* previousLocation;
    @property (nullable, nonatomic, setter=setPreviousStartDateTime:, getter=previousStartDateTime) MSGraphDateTimeTimeZone* previousStartDateTime;
    @property (nullable, nonatomic, setter=setPreviousEndDateTime:, getter=previousEndDateTime) MSGraphDateTimeTimeZone* previousEndDateTime;
    @property (nonatomic, setter=setResponseRequested:, getter=responseRequested) BOOL responseRequested;
    @property (nonatomic, setter=setAllowNewTimeProposals:, getter=allowNewTimeProposals) BOOL allowNewTimeProposals;
    @property (nullable, nonatomic, setter=setMeetingRequestType:, getter=meetingRequestType) MSGraphMeetingRequestType* meetingRequestType;
  
@end
