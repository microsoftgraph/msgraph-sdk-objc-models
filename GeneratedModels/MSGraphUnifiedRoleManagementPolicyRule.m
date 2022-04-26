// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleManagementPolicyRule()
{
    MSGraphUnifiedRoleManagementPolicyRuleTarget* _target;
}
@end

@implementation MSGraphUnifiedRoleManagementPolicyRule

- (MSGraphUnifiedRoleManagementPolicyRuleTarget*) target
{
    if(!_target){
        _target = [[MSGraphUnifiedRoleManagementPolicyRuleTarget alloc] initWithDictionary: self.dictionary[@"target"]];
    }
    return _target;
}

- (void) setTarget: (MSGraphUnifiedRoleManagementPolicyRuleTarget*) val
{
    _target = val;
    self.dictionary[@"target"] = val;
}


@end
