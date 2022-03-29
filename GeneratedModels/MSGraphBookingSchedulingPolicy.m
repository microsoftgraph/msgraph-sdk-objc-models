// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBookingSchedulingPolicy()
{
    BOOL _allowStaffSelection;
    MSDuration* _maximumAdvance;
    MSDuration* _minimumLeadTime;
    BOOL _sendConfirmationsToOwner;
    MSDuration* _timeSlotInterval;
}
@end

@implementation MSGraphBookingSchedulingPolicy

- (BOOL) allowStaffSelection
{
    _allowStaffSelection = [self.dictionary[@"allowStaffSelection"] boolValue];
    return _allowStaffSelection;
}

- (void) setAllowStaffSelection: (BOOL) val
{
    _allowStaffSelection = val;
    self.dictionary[@"allowStaffSelection"] = @(val);
}

- (MSDuration*) maximumAdvance
{
    if(!_maximumAdvance){
        _maximumAdvance = [MSDuration ms_durationFromString: self.dictionary[@"maximumAdvance"]];
    }
    return _maximumAdvance;
}

- (void) setMaximumAdvance: (MSDuration*) val
{
    _maximumAdvance = val;
    self.dictionary[@"maximumAdvance"] = val.durationString;
}

- (MSDuration*) minimumLeadTime
{
    if(!_minimumLeadTime){
        _minimumLeadTime = [MSDuration ms_durationFromString: self.dictionary[@"minimumLeadTime"]];
    }
    return _minimumLeadTime;
}

- (void) setMinimumLeadTime: (MSDuration*) val
{
    _minimumLeadTime = val;
    self.dictionary[@"minimumLeadTime"] = val.durationString;
}

- (BOOL) sendConfirmationsToOwner
{
    _sendConfirmationsToOwner = [self.dictionary[@"sendConfirmationsToOwner"] boolValue];
    return _sendConfirmationsToOwner;
}

- (void) setSendConfirmationsToOwner: (BOOL) val
{
    _sendConfirmationsToOwner = val;
    self.dictionary[@"sendConfirmationsToOwner"] = @(val);
}

- (MSDuration*) timeSlotInterval
{
    if(!_timeSlotInterval){
        _timeSlotInterval = [MSDuration ms_durationFromString: self.dictionary[@"timeSlotInterval"]];
    }
    return _timeSlotInterval;
}

- (void) setTimeSlotInterval: (MSDuration*) val
{
    _timeSlotInterval = val;
    self.dictionary[@"timeSlotInterval"] = val.durationString;
}

@end
