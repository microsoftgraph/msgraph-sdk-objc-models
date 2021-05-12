// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphUserFlowTypeValue){

	MSGraphUserFlowTypeSignUp = 1,
	MSGraphUserFlowTypeSignIn = 2,
	MSGraphUserFlowTypeSignUpOrSignIn = 3,
	MSGraphUserFlowTypePasswordReset = 4,
	MSGraphUserFlowTypeProfileUpdate = 5,
	MSGraphUserFlowTypeResourceOwner = 6,
	MSGraphUserFlowTypeUnknownFutureValue = 7,
    MSGraphUserFlowTypeEndOfEnum
};

@interface MSGraphUserFlowType : NSObject

+(MSGraphUserFlowType*) signUp;
+(MSGraphUserFlowType*) signIn;
+(MSGraphUserFlowType*) signUpOrSignIn;
+(MSGraphUserFlowType*) passwordReset;
+(MSGraphUserFlowType*) profileUpdate;
+(MSGraphUserFlowType*) resourceOwner;
+(MSGraphUserFlowType*) unknownFutureValue;

+(MSGraphUserFlowType*) UnknownEnumValue;

+(MSGraphUserFlowType*) userFlowTypeWithEnumValue:(MSGraphUserFlowTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphUserFlowTypeValue enumValue;

@end


@interface NSString (MSGraphUserFlowType)

- (MSGraphUserFlowType*) toMSGraphUserFlowType;

@end
