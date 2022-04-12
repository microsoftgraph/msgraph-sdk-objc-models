// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessClientApplications()
{
    NSArray* _excludeServicePrincipals;
    NSArray* _includeServicePrincipals;
}
@end

@implementation MSGraphConditionalAccessClientApplications

- (NSArray*) excludeServicePrincipals
{
    return self.dictionary[@"excludeServicePrincipals"];
}

- (void) setExcludeServicePrincipals: (NSArray*) val
{
    self.dictionary[@"excludeServicePrincipals"] = val;
}

- (NSArray*) includeServicePrincipals
{
    return self.dictionary[@"includeServicePrincipals"];
}

- (void) setIncludeServicePrincipals: (NSArray*) val
{
    self.dictionary[@"includeServicePrincipals"] = val;
}

@end
