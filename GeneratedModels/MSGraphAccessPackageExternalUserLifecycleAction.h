// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessPackageExternalUserLifecycleActionValue){

	MSGraphAccessPackageExternalUserLifecycleActionNone = 0,
	MSGraphAccessPackageExternalUserLifecycleActionBlockSignIn = 1,
	MSGraphAccessPackageExternalUserLifecycleActionBlockSignInAndDelete = 2,
	MSGraphAccessPackageExternalUserLifecycleActionUnknownFutureValue = 3,
    MSGraphAccessPackageExternalUserLifecycleActionEndOfEnum
};

@interface MSGraphAccessPackageExternalUserLifecycleAction : NSObject

+(MSGraphAccessPackageExternalUserLifecycleAction*) none;
+(MSGraphAccessPackageExternalUserLifecycleAction*) blockSignIn;
+(MSGraphAccessPackageExternalUserLifecycleAction*) blockSignInAndDelete;
+(MSGraphAccessPackageExternalUserLifecycleAction*) unknownFutureValue;

+(MSGraphAccessPackageExternalUserLifecycleAction*) UnknownEnumValue;

+(MSGraphAccessPackageExternalUserLifecycleAction*) accessPackageExternalUserLifecycleActionWithEnumValue:(MSGraphAccessPackageExternalUserLifecycleActionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessPackageExternalUserLifecycleActionValue enumValue;

@end


@interface NSString (MSGraphAccessPackageExternalUserLifecycleAction)

- (MSGraphAccessPackageExternalUserLifecycleAction*) toMSGraphAccessPackageExternalUserLifecycleAction;

@end
