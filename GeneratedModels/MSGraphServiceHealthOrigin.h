// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphServiceHealthOriginValue){

	MSGraphServiceHealthOriginMicrosoft = 1,
	MSGraphServiceHealthOriginThirdParty = 2,
	MSGraphServiceHealthOriginCustomer = 3,
	MSGraphServiceHealthOriginUnknownFutureValue = 4,
    MSGraphServiceHealthOriginEndOfEnum
};

@interface MSGraphServiceHealthOrigin : NSObject

+(MSGraphServiceHealthOrigin*) microsoft;
+(MSGraphServiceHealthOrigin*) thirdParty;
+(MSGraphServiceHealthOrigin*) customer;
+(MSGraphServiceHealthOrigin*) unknownFutureValue;

+(MSGraphServiceHealthOrigin*) UnknownEnumValue;

+(MSGraphServiceHealthOrigin*) serviceHealthOriginWithEnumValue:(MSGraphServiceHealthOriginValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphServiceHealthOriginValue enumValue;

@end


@interface NSString (MSGraphServiceHealthOrigin)

- (MSGraphServiceHealthOrigin*) toMSGraphServiceHealthOrigin;

@end
