// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphIdentityUserFlowAttributeDataTypeValue){

	MSGraphIdentityUserFlowAttributeDataTypeString = 1,
	MSGraphIdentityUserFlowAttributeDataTypeBoolean = 2,
	MSGraphIdentityUserFlowAttributeDataTypeInt64 = 3,
	MSGraphIdentityUserFlowAttributeDataTypeStringCollection = 4,
	MSGraphIdentityUserFlowAttributeDataTypeDateTime = 5,
	MSGraphIdentityUserFlowAttributeDataTypeUnknownFutureValue = 6,
    MSGraphIdentityUserFlowAttributeDataTypeEndOfEnum
};

@interface MSGraphIdentityUserFlowAttributeDataType : NSObject

+(MSGraphIdentityUserFlowAttributeDataType*) string;
+(MSGraphIdentityUserFlowAttributeDataType*) boolean;
+(MSGraphIdentityUserFlowAttributeDataType*) int64;
+(MSGraphIdentityUserFlowAttributeDataType*) stringCollection;
+(MSGraphIdentityUserFlowAttributeDataType*) dateTime;
+(MSGraphIdentityUserFlowAttributeDataType*) unknownFutureValue;

+(MSGraphIdentityUserFlowAttributeDataType*) UnknownEnumValue;

+(MSGraphIdentityUserFlowAttributeDataType*) identityUserFlowAttributeDataTypeWithEnumValue:(MSGraphIdentityUserFlowAttributeDataTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphIdentityUserFlowAttributeDataTypeValue enumValue;

@end


@interface NSString (MSGraphIdentityUserFlowAttributeDataType)

- (MSGraphIdentityUserFlowAttributeDataType*) toMSGraphIdentityUserFlowAttributeDataType;

@end
