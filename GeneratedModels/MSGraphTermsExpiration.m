// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTermsExpiration()
{
    MSDuration* _frequency;
    NSDate* _startDateTime;
}
@end

@implementation MSGraphTermsExpiration

- (MSDuration*) frequency
{
    if(!_frequency){
        _frequency = [MSDuration ms_durationFromString: self.dictionary[@"frequency"]];
    }
    return _frequency;
}

- (void) setFrequency: (MSDuration*) val
{
    _frequency = val;
    self.dictionary[@"frequency"] = val.durationString;
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

@end
