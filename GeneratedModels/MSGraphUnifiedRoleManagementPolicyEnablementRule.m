// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleManagementPolicyEnablementRule()
{
    NSArray* _enabledRules;
}
@end

@implementation MSGraphUnifiedRoleManagementPolicyEnablementRule

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleManagementPolicyEnablementRule";
    }
    return self;
}
- (NSArray*) enabledRules
{
    if([[NSNull null] isEqual:self.dictionary[@"enabledRules"]])
    {
        return nil;
    }   
    return self.dictionary[@"enabledRules"];
}

- (void) setEnabledRules: (NSArray*) val
{
    self.dictionary[@"enabledRules"] = val;
}


@end
