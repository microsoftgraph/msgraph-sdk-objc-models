// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphShiftActivity()
{
    NSString* _code;
    NSString* _displayName;
    NSDate* _endDateTime;
    BOOL _isPaid;
    NSDate* _startDateTime;
    MSGraphScheduleEntityTheme* _theme;
}
@end

@implementation MSGraphShiftActivity

- (NSString*) code
{
    if([[NSNull null] isEqual:self.dictionary[@"code"]])
    {
        return nil;
    }   
    return self.dictionary[@"code"];
}

- (void) setCode: (NSString*) val
{
    self.dictionary[@"code"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
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

- (BOOL) isPaid
{
    _isPaid = [self.dictionary[@"isPaid"] boolValue];
    return _isPaid;
}

- (void) setIsPaid: (BOOL) val
{
    _isPaid = val;
    self.dictionary[@"isPaid"] = @(val);
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
