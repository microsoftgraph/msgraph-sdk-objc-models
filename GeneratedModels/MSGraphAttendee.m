// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAttendee()
{
    MSGraphResponseStatus* _status;
    MSGraphTimeSlot* _proposedNewTime;
}
@end

@implementation MSGraphAttendee

- (MSGraphResponseStatus*) status
{
    if(!_status){
        _status = [[MSGraphResponseStatus alloc] initWithDictionary: self.dictionary[@"status"]];
    }
    return _status;
}

- (void) setStatus: (MSGraphResponseStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (MSGraphTimeSlot*) proposedNewTime
{
    if(!_proposedNewTime){
        _proposedNewTime = [[MSGraphTimeSlot alloc] initWithDictionary: self.dictionary[@"proposedNewTime"]];
    }
    return _proposedNewTime;
}

- (void) setProposedNewTime: (MSGraphTimeSlot*) val
{
    _proposedNewTime = val;
    self.dictionary[@"proposedNewTime"] = val;
}

@end
