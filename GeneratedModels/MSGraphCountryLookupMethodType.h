// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCountryLookupMethodTypeValue){

	MSGraphCountryLookupMethodTypeClientIpAddress = 0,
	MSGraphCountryLookupMethodTypeAuthenticatorAppGps = 1,
	MSGraphCountryLookupMethodTypeUnknownFutureValue = 2,
    MSGraphCountryLookupMethodTypeEndOfEnum
};

@interface MSGraphCountryLookupMethodType : NSObject

+(MSGraphCountryLookupMethodType*) clientIpAddress;
+(MSGraphCountryLookupMethodType*) authenticatorAppGps;
+(MSGraphCountryLookupMethodType*) unknownFutureValue;

+(MSGraphCountryLookupMethodType*) UnknownEnumValue;

+(MSGraphCountryLookupMethodType*) countryLookupMethodTypeWithEnumValue:(MSGraphCountryLookupMethodTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCountryLookupMethodTypeValue enumValue;

@end


@interface NSString (MSGraphCountryLookupMethodType)

- (MSGraphCountryLookupMethodType*) toMSGraphCountryLookupMethodType;

@end
