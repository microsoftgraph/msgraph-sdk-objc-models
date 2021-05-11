// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphIdentityUserFlowAttributeTypeValue){

	MSGraphIdentityUserFlowAttributeTypeBuiltIn = 1,
	MSGraphIdentityUserFlowAttributeTypeCustom = 2,
	MSGraphIdentityUserFlowAttributeTypeRequired = 3,
	MSGraphIdentityUserFlowAttributeTypeUnknownFutureValue = 4,
    MSGraphIdentityUserFlowAttributeTypeEndOfEnum
};

@interface MSGraphIdentityUserFlowAttributeType : NSObject

+(MSGraphIdentityUserFlowAttributeType*) builtIn;
+(MSGraphIdentityUserFlowAttributeType*) custom;
+(MSGraphIdentityUserFlowAttributeType*) required;
+(MSGraphIdentityUserFlowAttributeType*) unknownFutureValue;

+(MSGraphIdentityUserFlowAttributeType*) UnknownEnumValue;

+(MSGraphIdentityUserFlowAttributeType*) identityUserFlowAttributeTypeWithEnumValue:(MSGraphIdentityUserFlowAttributeTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphIdentityUserFlowAttributeTypeValue enumValue;

@end


@interface NSString (MSGraphIdentityUserFlowAttributeType)

- (MSGraphIdentityUserFlowAttributeType*) toMSGraphIdentityUserFlowAttributeType;

@end
