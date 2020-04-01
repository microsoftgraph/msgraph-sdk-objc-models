// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphScheduleEntity()
{
    NSDate* _startDateTime;
    NSDate* _endDateTime;
    MSGraphScheduleEntityTheme* _theme;
}
@end

@implementation MSGraphScheduleEntity

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

- (MSGraphScheduleEntityTheme*) theme
{
    if(!_theme){
        _theme = [self.dictionary[@"theme"] toMSGraphScheduleEntityTheme];
    }
    return _theme;
}

- (void) setTheme: (MSGraphScheduleEntityTheme*) val
{
    _theme = val;
    self.dictionary[@"theme"] = val;
}

@end
