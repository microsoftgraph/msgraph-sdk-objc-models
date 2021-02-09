// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAuthenticationMethodKeyStrengthValue){

	MSGraphAuthenticationMethodKeyStrengthNormal = 0,
	MSGraphAuthenticationMethodKeyStrengthWeak = 1,
	MSGraphAuthenticationMethodKeyStrengthUnknown = 2,
    MSGraphAuthenticationMethodKeyStrengthEndOfEnum
};

@interface MSGraphAuthenticationMethodKeyStrength : NSObject

+(MSGraphAuthenticationMethodKeyStrength*) normal;
+(MSGraphAuthenticationMethodKeyStrength*) weak;
+(MSGraphAuthenticationMethodKeyStrength*) unknown;

+(MSGraphAuthenticationMethodKeyStrength*) UnknownEnumValue;

+(MSGraphAuthenticationMethodKeyStrength*) authenticationMethodKeyStrengthWithEnumValue:(MSGraphAuthenticationMethodKeyStrengthValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAuthenticationMethodKeyStrengthValue enumValue;

@end


@interface NSString (MSGraphAuthenticationMethodKeyStrength)

- (MSGraphAuthenticationMethodKeyStrength*) toMSGraphAuthenticationMethodKeyStrength;

@end
