// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphParentalControlSettings()
{
    NSArray* _countriesBlockedForMinors;
    NSString* _legalAgeGroupRule;
}
@end

@implementation MSGraphParentalControlSettings

- (NSArray*) countriesBlockedForMinors
{
    if([[NSNull null] isEqual:self.dictionary[@"countriesBlockedForMinors"]])
    {
        return nil;
    }   
    return self.dictionary[@"countriesBlockedForMinors"];
}

- (void) setCountriesBlockedForMinors: (NSArray*) val
{
    self.dictionary[@"countriesBlockedForMinors"] = val;
}

- (NSString*) legalAgeGroupRule
{
    if([[NSNull null] isEqual:self.dictionary[@"legalAgeGroupRule"]])
    {
        return nil;
    }   
    return self.dictionary[@"legalAgeGroupRule"];
}

- (void) setLegalAgeGroupRule: (NSString*) val
{
    self.dictionary[@"legalAgeGroupRule"] = val;
}

@end
