// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMobileAppInstallTimeSettings()
{
    NSDate* _deadlineDateTime;
    NSDate* _startDateTime;
    BOOL _useLocalTime;
}
@end

@implementation MSGraphMobileAppInstallTimeSettings

- (NSDate*) deadlineDateTime
{
    if(!_deadlineDateTime){
        _deadlineDateTime = [NSDate ms_dateFromString: self.dictionary[@"deadlineDateTime"]];
    }
    return _deadlineDateTime;
}

- (void) setDeadlineDateTime: (NSDate*) val
{
    _deadlineDateTime = val;
    self.dictionary[@"deadlineDateTime"] = [val ms_toString];
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

- (BOOL) useLocalTime
{
    _useLocalTime = [self.dictionary[@"useLocalTime"] boolValue];
    return _useLocalTime;
}

- (void) setUseLocalTime: (BOOL) val
{
    _useLocalTime = val;
    self.dictionary[@"useLocalTime"] = @(val);
}

@end
