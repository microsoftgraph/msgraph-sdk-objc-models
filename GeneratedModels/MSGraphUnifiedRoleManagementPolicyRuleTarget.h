// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphDirectoryObject; 
#import "MSGraphUnifiedRoleManagementPolicyRuleTargetOperations.h"


#import "MSObject.h"

@interface MSGraphUnifiedRoleManagementPolicyRuleTarget : MSObject

@property (nullable, nonatomic, setter=setCaller:, getter=caller) NSString* caller;
@property (nullable, nonatomic, setter=setEnforcedSettings:, getter=enforcedSettings) NSArray* enforcedSettings;
@property (nullable, nonatomic, setter=setInheritableSettings:, getter=inheritableSettings) NSArray* inheritableSettings;
@property (nullable, nonatomic, setter=setLevel:, getter=level) NSString* level;
@property (nullable, nonatomic, setter=setUnifiedRoleManagementPolicyRuleTargetOperations:, getter=unifiedRoleManagementPolicyRuleTargetOperations) NSArray* unifiedRoleManagementPolicyRuleTargetOperations;
@property (nullable, nonatomic, setter=setTargetObjects:, getter=targetObjects) NSArray* targetObjects;

@end
