// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsValue){

	MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsAll = 0,
	MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsActivate = 1,
	MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsDeactivate = 2,
	MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsAssign = 3,
	MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsUpdate = 4,
	MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsRemove = 5,
	MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsExtend = 6,
	MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsRenew = 7,
	MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsUnknownFutureValue = 8,
    MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsEndOfEnum
};

@interface MSGraphUnifiedRoleManagementPolicyRuleTargetOperations : NSObject

+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) all;
+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) activate;
+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) deactivate;
+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) assign;
+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) update;
+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) remove;
+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) extend;
+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) renew;
+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) unknownFutureValue;

+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) UnknownEnumValue;

+(MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) unifiedRoleManagementPolicyRuleTargetOperationsWithEnumValue:(MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphUnifiedRoleManagementPolicyRuleTargetOperationsValue enumValue;

@end


@interface NSString (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations)

- (MSGraphUnifiedRoleManagementPolicyRuleTargetOperations*) toMSGraphUnifiedRoleManagementPolicyRuleTargetOperations;

@end
