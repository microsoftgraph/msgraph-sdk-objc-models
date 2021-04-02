// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphProvisioningActionValue){

	MSGraphProvisioningActionOther = 0,
	MSGraphProvisioningActionCreate = 1,
	MSGraphProvisioningActionDelete = 2,
	MSGraphProvisioningActionDisable = 3,
	MSGraphProvisioningActionUpdate = 4,
	MSGraphProvisioningActionStagedDelete = 5,
	MSGraphProvisioningActionUnknownFutureValue = 6,
    MSGraphProvisioningActionEndOfEnum
};

@interface MSGraphProvisioningAction : NSObject

+(MSGraphProvisioningAction*) other;
+(MSGraphProvisioningAction*) create;
+(MSGraphProvisioningAction*) delete;
+(MSGraphProvisioningAction*) disable;
+(MSGraphProvisioningAction*) update;
+(MSGraphProvisioningAction*) stagedDelete;
+(MSGraphProvisioningAction*) unknownFutureValue;

+(MSGraphProvisioningAction*) UnknownEnumValue;

+(MSGraphProvisioningAction*) provisioningActionWithEnumValue:(MSGraphProvisioningActionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphProvisioningActionValue enumValue;

@end


@interface NSString (MSGraphProvisioningAction)

- (MSGraphProvisioningAction*) toMSGraphProvisioningAction;

@end
