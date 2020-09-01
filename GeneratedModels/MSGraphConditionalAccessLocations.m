// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessLocations()
{
    NSArray* _excludeLocations;
    NSArray* _includeLocations;
}
@end

@implementation MSGraphConditionalAccessLocations

- (NSArray*) excludeLocations
{
    return self.dictionary[@"excludeLocations"];
}

- (void) setExcludeLocations: (NSArray*) val
{
    self.dictionary[@"excludeLocations"] = val;
}

- (NSArray*) includeLocations
{
    return self.dictionary[@"includeLocations"];
}

- (void) setIncludeLocations: (NSArray*) val
{
    self.dictionary[@"includeLocations"] = val;
}

@end
