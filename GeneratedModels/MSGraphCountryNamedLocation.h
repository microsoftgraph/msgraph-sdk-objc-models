// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphCountryLookupMethodType.h"


#import "MSGraphNamedLocation.h"

@interface MSGraphCountryNamedLocation : MSGraphNamedLocation

  @property (nonnull, nonatomic, setter=setCountriesAndRegions:, getter=countriesAndRegions) NSArray* countriesAndRegions;
    @property (nullable, nonatomic, setter=setCountryLookupMethod:, getter=countryLookupMethod) MSGraphCountryLookupMethodType* countryLookupMethod;
    @property (nonatomic, setter=setIncludeUnknownCountriesAndRegions:, getter=includeUnknownCountriesAndRegions) BOOL includeUnknownCountriesAndRegions;
  
@end
