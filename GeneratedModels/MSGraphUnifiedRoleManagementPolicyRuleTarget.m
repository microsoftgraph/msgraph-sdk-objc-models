// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedRoleManagementPolicyRuleTarget()
{
    NSString* _caller;
    NSArray* _enforcedSettings;
    NSArray* _inheritableSettings;
    NSString* _level;
    NSArray* _unifiedRoleManagementPolicyRuleTargetOperations;
    NSArray* _targetObjects;
}
@end

@implementation MSGraphUnifiedRoleManagementPolicyRuleTarget

- (NSString*) caller
{
    if([[NSNull null] isEqual:self.dictionary[@"caller"]])
    {
        return nil;
    }   
    return self.dictionary[@"caller"];
}

- (void) setCaller: (NSString*) val
{
    self.dictionary[@"caller"] = val;
}

- (NSArray*) enforcedSettings
{
    if([[NSNull null] isEqual:self.dictionary[@"enforcedSettings"]])
    {
        return nil;
    }   
    return self.dictionary[@"enforcedSettings"];
}

- (void) setEnforcedSettings: (NSArray*) val
{
    self.dictionary[@"enforcedSettings"] = val;
}

- (NSArray*) inheritableSettings
{
    if([[NSNull null] isEqual:self.dictionary[@"inheritableSettings"]])
    {
        return nil;
    }   
    return self.dictionary[@"inheritableSettings"];
}

- (void) setInheritableSettings: (NSArray*) val
{
    self.dictionary[@"inheritableSettings"] = val;
}

- (NSString*) level
{
    if([[NSNull null] isEqual:self.dictionary[@"level"]])
    {
        return nil;
    }   
    return self.dictionary[@"level"];
}

- (void) setLevel: (NSString*) val
{
    self.dictionary[@"level"] = val;
}

- (NSArray*) unifiedRoleManagementPolicyRuleTargetOperations
{
    if(!_unifiedRoleManagementPolicyRuleTargetOperations){
        
    NSMutableArray *unifiedRoleManagementPolicyRuleTargetOperationsResult = [NSMutableArray array];
    NSArray *unifiedRoleManagementPolicyRuleTargetOperations = self.dictionary[@"operations"];

    if ([unifiedRoleManagementPolicyRuleTargetOperations isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleManagementPolicyRuleTargetOperations in unifiedRoleManagementPolicyRuleTargetOperations){
            [unifiedRoleManagementPolicyRuleTargetOperationsResult addObject:tempUnifiedRoleManagementPolicyRuleTargetOperations];
        }
    }

    _unifiedRoleManagementPolicyRuleTargetOperations = unifiedRoleManagementPolicyRuleTargetOperationsResult;
        
    }
    return _unifiedRoleManagementPolicyRuleTargetOperations;
}

- (void) setUnifiedRoleManagementPolicyRuleTargetOperations: (NSArray*) val
{
    _unifiedRoleManagementPolicyRuleTargetOperations = val;
    self.dictionary[@"operations"] = val;
}

- (NSArray*) targetObjects
{
    if(!_targetObjects){
        
    NSMutableArray *targetObjectsResult = [NSMutableArray array];
    NSArray *targetObjects = self.dictionary[@"targetObjects"];

    if ([targetObjects isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in targetObjects){
            [targetObjectsResult addObject:tempDirectoryObject];
        }
    }

    _targetObjects = targetObjectsResult;
        
    }
    return _targetObjects;
}

- (void) setTargetObjects: (NSArray*) val
{
    _targetObjects = val;
    self.dictionary[@"targetObjects"] = val;
}

@end
