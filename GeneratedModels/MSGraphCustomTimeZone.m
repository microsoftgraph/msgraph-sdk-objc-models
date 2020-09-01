// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCustomTimeZone()
{
    int32_t _bias;
    MSGraphDaylightTimeZoneOffset* _daylightOffset;
    MSGraphStandardTimeZoneOffset* _standardOffset;
}
@end

@implementation MSGraphCustomTimeZone

- (int32_t) bias
{
    _bias = [self.dictionary[@"bias"] intValue];
    return _bias;
}

- (void) setBias: (int32_t) val
{
    _bias = val;
    self.dictionary[@"bias"] = @(val);
}

- (MSGraphDaylightTimeZoneOffset*) daylightOffset
{
    if(!_daylightOffset){
        _daylightOffset = [[MSGraphDaylightTimeZoneOffset alloc] initWithDictionary: self.dictionary[@"daylightOffset"]];
    }
    return _daylightOffset;
}

- (void) setDaylightOffset: (MSGraphDaylightTimeZoneOffset*) val
{
    _daylightOffset = val;
    self.dictionary[@"daylightOffset"] = val;
}

- (MSGraphStandardTimeZoneOffset*) standardOffset
{
    if(!_standardOffset){
        _standardOffset = [[MSGraphStandardTimeZoneOffset alloc] initWithDictionary: self.dictionary[@"standardOffset"]];
    }
    return _standardOffset;
}

- (void) setStandardOffset: (MSGraphStandardTimeZoneOffset*) val
{
    _standardOffset = val;
    self.dictionary[@"standardOffset"] = val;
}

@end
