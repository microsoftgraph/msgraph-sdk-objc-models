// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleManagementPolicyApprovalRule()
{
    MSGraphApprovalSettings* _setting;
}
@end

@implementation MSGraphUnifiedRoleManagementPolicyApprovalRule

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleManagementPolicyApprovalRule";
    }
    return self;
}
- (MSGraphApprovalSettings*) setting
{
    if(!_setting){
        _setting = [[MSGraphApprovalSettings alloc] initWithDictionary: self.dictionary[@"setting"]];
    }
    return _setting;
}

- (void) setSetting: (MSGraphApprovalSettings*) val
{
    _setting = val;
    self.dictionary[@"setting"] = val;
}


@end
