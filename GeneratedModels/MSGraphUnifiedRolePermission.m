// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRolePermission()
{
    NSArray* _allowedResourceActions;
    NSString* _condition;
    NSArray* _excludedResourceActions;
}
@end

@implementation MSGraphUnifiedRolePermission

- (NSArray*) allowedResourceActions
{
    return self.dictionary[@"allowedResourceActions"];
}

- (void) setAllowedResourceActions: (NSArray*) val
{
    self.dictionary[@"allowedResourceActions"] = val;
}

- (NSString*) condition
{
    if([[NSNull null] isEqual:self.dictionary[@"condition"]])
    {
        return nil;
    }   
    return self.dictionary[@"condition"];
}

- (void) setCondition: (NSString*) val
{
    self.dictionary[@"condition"] = val;
}

- (NSArray*) excludedResourceActions
{
    if([[NSNull null] isEqual:self.dictionary[@"excludedResourceActions"]])
    {
        return nil;
    }   
    return self.dictionary[@"excludedResourceActions"];
}

- (void) setExcludedResourceActions: (NSArray*) val
{
    self.dictionary[@"excludedResourceActions"] = val;
}

@end
