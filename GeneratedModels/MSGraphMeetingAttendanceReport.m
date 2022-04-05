// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMeetingAttendanceReport()
{
    NSDate* _meetingEndDateTime;
    NSDate* _meetingStartDateTime;
    int32_t _totalParticipantCount;
    NSArray* _attendanceRecords;
}
@end

@implementation MSGraphMeetingAttendanceReport

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.meetingAttendanceReport";
    }
    return self;
}
- (NSDate*) meetingEndDateTime
{
    if(!_meetingEndDateTime){
        _meetingEndDateTime = [NSDate ms_dateFromString: self.dictionary[@"meetingEndDateTime"]];
    }
    return _meetingEndDateTime;
}

- (void) setMeetingEndDateTime: (NSDate*) val
{
    _meetingEndDateTime = val;
    self.dictionary[@"meetingEndDateTime"] = [val ms_toString];
}

- (NSDate*) meetingStartDateTime
{
    if(!_meetingStartDateTime){
        _meetingStartDateTime = [NSDate ms_dateFromString: self.dictionary[@"meetingStartDateTime"]];
    }
    return _meetingStartDateTime;
}

- (void) setMeetingStartDateTime: (NSDate*) val
{
    _meetingStartDateTime = val;
    self.dictionary[@"meetingStartDateTime"] = [val ms_toString];
}

- (int32_t) totalParticipantCount
{
    _totalParticipantCount = [self.dictionary[@"totalParticipantCount"] intValue];
    return _totalParticipantCount;
}

- (void) setTotalParticipantCount: (int32_t) val
{
    _totalParticipantCount = val;
    self.dictionary[@"totalParticipantCount"] = @(val);
}

- (NSArray*) attendanceRecords
{
    if(!_attendanceRecords){
        
    NSMutableArray *attendanceRecordsResult = [NSMutableArray array];
    NSArray *attendanceRecords = self.dictionary[@"attendanceRecords"];

    if ([attendanceRecords isKindOfClass:[NSArray class]]){
        for (id tempAttendanceRecord in attendanceRecords){
            [attendanceRecordsResult addObject:tempAttendanceRecord];
        }
    }

    _attendanceRecords = attendanceRecordsResult;
        
    }
    return _attendanceRecords;
}

- (void) setAttendanceRecords: (NSArray*) val
{
    _attendanceRecords = val;
    self.dictionary[@"attendanceRecords"] = val;
}


@end
