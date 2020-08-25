// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSigninFrequencyTypeValue){

	MSGraphSigninFrequencyTypeDays = 0,
	MSGraphSigninFrequencyTypeHours = 1,
    MSGraphSigninFrequencyTypeEndOfEnum
};

@interface MSGraphSigninFrequencyType : NSObject

+(MSGraphSigninFrequencyType*) days;
+(MSGraphSigninFrequencyType*) hours;

+(MSGraphSigninFrequencyType*) UnknownEnumValue;

+(MSGraphSigninFrequencyType*) signinFrequencyTypeWithEnumValue:(MSGraphSigninFrequencyTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSigninFrequencyTypeValue enumValue;

@end


@interface NSString (MSGraphSigninFrequencyType)

- (MSGraphSigninFrequencyType*) toMSGraphSigninFrequencyType;

@end
