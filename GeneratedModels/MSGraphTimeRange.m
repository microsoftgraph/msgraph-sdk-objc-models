// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTimeRange()
{
    MSTimeOfDay* _startTime;
    MSTimeOfDay* _endTime;
}
@end

@implementation MSGraphTimeRange

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

@end
