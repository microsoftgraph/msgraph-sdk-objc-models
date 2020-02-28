// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphParentalControlSettings : MSObject

@property (nullable, nonatomic, setter=setCountriesBlockedForMinors:, getter=countriesBlockedForMinors) NSArray* countriesBlockedForMinors;
@property (nullable, nonatomic, setter=setLegalAgeGroupRule:, getter=legalAgeGroupRule) NSString* legalAgeGroupRule;

@end
