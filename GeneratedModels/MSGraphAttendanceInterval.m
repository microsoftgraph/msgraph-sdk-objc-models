// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAttendanceInterval()
{
    int32_t _durationInSeconds;
    NSDate* _joinDateTime;
    NSDate* _leaveDateTime;
}
@end

@implementation MSGraphAttendanceInterval

- (int32_t) durationInSeconds
{
    _durationInSeconds = [self.dictionary[@"durationInSeconds"] intValue];
    return _durationInSeconds;
}

- (void) setDurationInSeconds: (int32_t) val
{
    _durationInSeconds = val;
    self.dictionary[@"durationInSeconds"] = @(val);
}

- (NSDate*) joinDateTime
{
    if(!_joinDateTime){
        _joinDateTime = [NSDate ms_dateFromString: self.dictionary[@"joinDateTime"]];
    }
    return _joinDateTime;
}

- (void) setJoinDateTime: (NSDate*) val
{
    _joinDateTime = val;
    self.dictionary[@"joinDateTime"] = [val ms_toString];
}

- (NSDate*) leaveDateTime
{
    if(!_leaveDateTime){
        _leaveDateTime = [NSDate ms_dateFromString: self.dictionary[@"leaveDateTime"]];
    }
    return _leaveDateTime;
}

- (void) setLeaveDateTime: (NSDate*) val
{
    _leaveDateTime = val;
    self.dictionary[@"leaveDateTime"] = [val ms_toString];
}

@end
