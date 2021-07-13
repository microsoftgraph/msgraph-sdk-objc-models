// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCountryNamedLocation()
{
    NSArray* _countriesAndRegions;
    MSGraphCountryLookupMethodType* _countryLookupMethod;
    BOOL _includeUnknownCountriesAndRegions;
}
@end

@implementation MSGraphCountryNamedLocation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.countryNamedLocation";
    }
    return self;
}
- (NSArray*) countriesAndRegions
{
    return self.dictionary[@"countriesAndRegions"];
}

- (void) setCountriesAndRegions: (NSArray*) val
{
    self.dictionary[@"countriesAndRegions"] = val;
}

- (MSGraphCountryLookupMethodType*) countryLookupMethod
{
    if(!_countryLookupMethod){
        _countryLookupMethod = [self.dictionary[@"countryLookupMethod"] toMSGraphCountryLookupMethodType];
    }
    return _countryLookupMethod;
}

- (void) setCountryLookupMethod: (MSGraphCountryLookupMethodType*) val
{
    _countryLookupMethod = val;
    self.dictionary[@"countryLookupMethod"] = val;
}

- (BOOL) includeUnknownCountriesAndRegions
{
    _includeUnknownCountriesAndRegions = [self.dictionary[@"includeUnknownCountriesAndRegions"] boolValue];
    return _includeUnknownCountriesAndRegions;
}

- (void) setIncludeUnknownCountriesAndRegions: (BOOL) val
{
    _includeUnknownCountriesAndRegions = val;
    self.dictionary[@"includeUnknownCountriesAndRegions"] = @(val);
}


@end
