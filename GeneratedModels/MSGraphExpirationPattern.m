// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphExpirationPattern()
{
    MSDuration* _duration;
    NSDate* _endDateTime;
    MSGraphExpirationPatternType* _type;
}
@end

@implementation MSGraphExpirationPattern

- (MSDuration*) duration
{
    if(!_duration){
        _duration = [MSDuration ms_durationFromString: self.dictionary[@"duration"]];
    }
    return _duration;
}

- (void) setDuration: (MSDuration*) val
{
    _duration = val;
    self.dictionary[@"duration"] = val.durationString;
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

- (MSGraphExpirationPatternType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphExpirationPatternType];
    }
    return _type;
}

- (void) setType: (MSGraphExpirationPatternType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

@end
