// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphScheduleChangeRequest.h"

@interface MSGraphTimeOffRequest : MSGraphScheduleChangeRequest

  @property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
    @property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
    @property (nullable, nonatomic, setter=setTimeOffReasonId:, getter=timeOffReasonId) NSString* timeOffReasonId;
  
@end
