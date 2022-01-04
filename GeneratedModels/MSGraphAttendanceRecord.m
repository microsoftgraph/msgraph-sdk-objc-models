// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAttendanceRecord()
{
    NSArray* _attendanceIntervals;
    NSString* _emailAddress;
    MSGraphIdentity* _identity;
    NSString* _role;
    int32_t _totalAttendanceInSeconds;
}
@end

@implementation MSGraphAttendanceRecord

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.attendanceRecord";
    }
    return self;
}
- (NSArray*) attendanceIntervals
{
    if(!_attendanceIntervals){
        
    NSMutableArray *attendanceIntervalsResult = [NSMutableArray array];
    NSArray *attendanceIntervals = self.dictionary[@"attendanceIntervals"];

    if ([attendanceIntervals isKindOfClass:[NSArray class]]){
        for (id tempAttendanceInterval in attendanceIntervals){
            [attendanceIntervalsResult addObject:tempAttendanceInterval];
        }
    }

    _attendanceIntervals = attendanceIntervalsResult;
        
    }
    return _attendanceIntervals;
}

- (void) setAttendanceIntervals: (NSArray*) val
{
    _attendanceIntervals = val;
    self.dictionary[@"attendanceIntervals"] = val;
}

- (NSString*) emailAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"emailAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"emailAddress"];
}

- (void) setEmailAddress: (NSString*) val
{
    self.dictionary[@"emailAddress"] = val;
}

- (MSGraphIdentity*) identity
{
    if(!_identity){
        _identity = [[MSGraphIdentity alloc] initWithDictionary: self.dictionary[@"identity"]];
    }
    return _identity;
}

- (void) setIdentity: (MSGraphIdentity*) val
{
    _identity = val;
    self.dictionary[@"identity"] = val;
}

- (NSString*) role
{
    if([[NSNull null] isEqual:self.dictionary[@"role"]])
    {
        return nil;
    }   
    return self.dictionary[@"role"];
}

- (void) setRole: (NSString*) val
{
    self.dictionary[@"role"] = val;
}

- (int32_t) totalAttendanceInSeconds
{
    _totalAttendanceInSeconds = [self.dictionary[@"totalAttendanceInSeconds"] intValue];
    return _totalAttendanceInSeconds;
}

- (void) setTotalAttendanceInSeconds: (int32_t) val
{
    _totalAttendanceInSeconds = val;
    self.dictionary[@"totalAttendanceInSeconds"] = @(val);
}


@end
