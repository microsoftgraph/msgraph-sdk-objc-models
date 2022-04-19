// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAttendanceRecord; 


#import "MSGraphEntity.h"

@interface MSGraphMeetingAttendanceReport : MSGraphEntity

  @property (nullable, nonatomic, setter=setMeetingEndDateTime:, getter=meetingEndDateTime) NSDate* meetingEndDateTime;
    @property (nullable, nonatomic, setter=setMeetingStartDateTime:, getter=meetingStartDateTime) NSDate* meetingStartDateTime;
    @property (nonatomic, setter=setTotalParticipantCount:, getter=totalParticipantCount) int32_t totalParticipantCount;
    @property (nullable, nonatomic, setter=setAttendanceRecords:, getter=attendanceRecords) NSArray* attendanceRecords;
  
@end
