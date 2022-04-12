// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleManagementPolicyAssignment()
{
    NSString* _policyId;
    NSString* _roleDefinitionId;
    NSString* _scopeId;
    NSString* _scopeType;
    MSGraphUnifiedRoleManagementPolicy* _policy;
}
@end

@implementation MSGraphUnifiedRoleManagementPolicyAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.unifiedRoleManagementPolicyAssignment";
    }
    return self;
}
- (NSString*) policyId
{
    return self.dictionary[@"policyId"];
}

- (void) setPolicyId: (NSString*) val
{
    self.dictionary[@"policyId"] = val;
}

- (NSString*) roleDefinitionId
{
    if([[NSNull null] isEqual:self.dictionary[@"roleDefinitionId"]])
    {
        return nil;
    }   
    return self.dictionary[@"roleDefinitionId"];
}

- (void) setRoleDefinitionId: (NSString*) val
{
    self.dictionary[@"roleDefinitionId"] = val;
}

- (NSString*) scopeId
{
    return self.dictionary[@"scopeId"];
}

- (void) setScopeId: (NSString*) val
{
    self.dictionary[@"scopeId"] = val;
}

- (NSString*) scopeType
{
    return self.dictionary[@"scopeType"];
}

- (void) setScopeType: (NSString*) val
{
    self.dictionary[@"scopeType"] = val;
}

- (MSGraphUnifiedRoleManagementPolicy*) policy
{
    if(!_policy){
        _policy = [[MSGraphUnifiedRoleManagementPolicy alloc] initWithDictionary: self.dictionary[@"policy"]];
    }
    return _policy;
}

- (void) setPolicy: (MSGraphUnifiedRoleManagementPolicy*) val
{
    _policy = val;
    self.dictionary[@"policy"] = val;
}


@end
