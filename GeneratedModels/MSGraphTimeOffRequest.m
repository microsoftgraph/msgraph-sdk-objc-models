// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTimeOffRequest()
{
    NSDate* _endDateTime;
    NSDate* _startDateTime;
    NSString* _timeOffReasonId;
}
@end

@implementation MSGraphTimeOffRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.timeOffRequest";
    }
    return self;
}
- (NSDate*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [NSDate ms_dateFromString: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (NSDate*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = [val ms_toString];
}

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}

- (NSString*) timeOffReasonId
{
    if([[NSNull null] isEqual:self.dictionary[@"timeOffReasonId"]])
    {
        return nil;
    }   
    return self.dictionary[@"timeOffReasonId"];
}

- (void) setTimeOffReasonId: (NSString*) val
{
    self.dictionary[@"timeOffReasonId"] = val;
}


@end
