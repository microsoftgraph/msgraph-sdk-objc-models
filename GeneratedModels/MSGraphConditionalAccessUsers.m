// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessUsers()
{
    NSArray* _includeUsers;
    NSArray* _excludeUsers;
    NSArray* _includeGroups;
    NSArray* _excludeGroups;
    NSArray* _includeRoles;
    NSArray* _excludeRoles;
}
@end

@implementation MSGraphConditionalAccessUsers

- (NSArray*) includeUsers
{
    return self.dictionary[@"includeUsers"];
}

- (void) setIncludeUsers: (NSArray*) val
{
    self.dictionary[@"includeUsers"] = val;
}

- (NSArray*) excludeUsers
{
    return self.dictionary[@"excludeUsers"];
}

- (void) setExcludeUsers: (NSArray*) val
{
    self.dictionary[@"excludeUsers"] = val;
}

- (NSArray*) includeGroups
{
    return self.dictionary[@"includeGroups"];
}

- (void) setIncludeGroups: (NSArray*) val
{
    self.dictionary[@"includeGroups"] = val;
}

- (NSArray*) excludeGroups
{
    return self.dictionary[@"excludeGroups"];
}

- (void) setExcludeGroups: (NSArray*) val
{
    self.dictionary[@"excludeGroups"] = val;
}

- (NSArray*) includeRoles
{
    return self.dictionary[@"includeRoles"];
}

- (void) setIncludeRoles: (NSArray*) val
{
    self.dictionary[@"includeRoles"] = val;
}

- (NSArray*) excludeRoles
{
    return self.dictionary[@"excludeRoles"];
}

- (void) setExcludeRoles: (NSArray*) val
{
    self.dictionary[@"excludeRoles"] = val;
}

@end
