// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphInitiatorTypeValue){

	MSGraphInitiatorTypeUser = 0,
	MSGraphInitiatorTypeApplication = 1,
	MSGraphInitiatorTypeSystem = 2,
	MSGraphInitiatorTypeUnknownFutureValue = 3,
    MSGraphInitiatorTypeEndOfEnum
};

@interface MSGraphInitiatorType : NSObject

+(MSGraphInitiatorType*) user;
+(MSGraphInitiatorType*) application;
+(MSGraphInitiatorType*) system;
+(MSGraphInitiatorType*) unknownFutureValue;

+(MSGraphInitiatorType*) UnknownEnumValue;

+(MSGraphInitiatorType*) initiatorTypeWithEnumValue:(MSGraphInitiatorTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphInitiatorTypeValue enumValue;

@end


@interface NSString (MSGraphInitiatorType)

- (MSGraphInitiatorType*) toMSGraphInitiatorType;

@end
