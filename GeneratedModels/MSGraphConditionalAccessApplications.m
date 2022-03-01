// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessApplications()
{
    NSArray* _excludeApplications;
    NSArray* _includeApplications;
    NSArray* _includeAuthenticationContextClassReferences;
    NSArray* _includeUserActions;
}
@end

@implementation MSGraphConditionalAccessApplications

- (NSArray*) excludeApplications
{
    return self.dictionary[@"excludeApplications"];
}

- (void) setExcludeApplications: (NSArray*) val
{
    self.dictionary[@"excludeApplications"] = val;
}

- (NSArray*) includeApplications
{
    return self.dictionary[@"includeApplications"];
}

- (void) setIncludeApplications: (NSArray*) val
{
    self.dictionary[@"includeApplications"] = val;
}

- (NSArray*) includeAuthenticationContextClassReferences
{
    return self.dictionary[@"includeAuthenticationContextClassReferences"];
}

- (void) setIncludeAuthenticationContextClassReferences: (NSArray*) val
{
    self.dictionary[@"includeAuthenticationContextClassReferences"] = val;
}

- (NSArray*) includeUserActions
{
    return self.dictionary[@"includeUserActions"];
}

- (void) setIncludeUserActions: (NSArray*) val
{
    self.dictionary[@"includeUserActions"] = val;
}

@end
