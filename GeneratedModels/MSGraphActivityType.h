// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphActivityTypeValue){

	MSGraphActivityTypeSignin = 0,
	MSGraphActivityTypeUser = 1,
	MSGraphActivityTypeUnknownFutureValue = 2,
    MSGraphActivityTypeEndOfEnum
};

@interface MSGraphActivityType : NSObject

+(MSGraphActivityType*) signin;
+(MSGraphActivityType*) user;
+(MSGraphActivityType*) unknownFutureValue;

+(MSGraphActivityType*) UnknownEnumValue;

+(MSGraphActivityType*) activityTypeWithEnumValue:(MSGraphActivityTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphActivityTypeValue enumValue;

@end


@interface NSString (MSGraphActivityType)

- (MSGraphActivityType*) toMSGraphActivityType;

@end
