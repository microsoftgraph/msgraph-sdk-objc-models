// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingWorkTimeSlot()
{
    MSTimeOfDay* _endTime;
    MSTimeOfDay* _startTime;
}
@end

@implementation MSGraphBookingWorkTimeSlot

- (MSTimeOfDay*) endTime
{
    if(!_endTime){
        _endTime = [MSTimeOfDay ms_timeFromString: self.dictionary[@"endTime"]];
    }
    return _endTime;
}

- (void) setEndTime: (MSTimeOfDay*) val
{
    _endTime = val;
    self.dictionary[@"endTime"] = [val ms_toString];
}

- (MSTimeOfDay*) startTime
{
    if(!_startTime){
        _startTime = [MSTimeOfDay ms_timeFromString: self.dictionary[@"startTime"]];
    }
    return _startTime;
}

- (void) setStartTime: (MSTimeOfDay*) val
{
    _startTime = val;
    self.dictionary[@"startTime"] = [val ms_toString];
}

@end
