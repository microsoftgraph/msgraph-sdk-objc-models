// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAuthenticationMethodTargetTypeValue){

	MSGraphAuthenticationMethodTargetTypeUser = 0,
	MSGraphAuthenticationMethodTargetTypeGroup = 1,
	MSGraphAuthenticationMethodTargetTypeUnknownFutureValue = 2,
    MSGraphAuthenticationMethodTargetTypeEndOfEnum
};

@interface MSGraphAuthenticationMethodTargetType : NSObject

+(MSGraphAuthenticationMethodTargetType*) user;
+(MSGraphAuthenticationMethodTargetType*) group;
+(MSGraphAuthenticationMethodTargetType*) unknownFutureValue;

+(MSGraphAuthenticationMethodTargetType*) UnknownEnumValue;

+(MSGraphAuthenticationMethodTargetType*) authenticationMethodTargetTypeWithEnumValue:(MSGraphAuthenticationMethodTargetTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAuthenticationMethodTargetTypeValue enumValue;

@end


@interface NSString (MSGraphAuthenticationMethodTargetType)

- (MSGraphAuthenticationMethodTargetType*) toMSGraphAuthenticationMethodTargetType;

@end
