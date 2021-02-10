// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMicrosoftAuthenticatorAuthenticationModeValue){

	MSGraphMicrosoftAuthenticatorAuthenticationModeDeviceBasedPush = 0,
	MSGraphMicrosoftAuthenticatorAuthenticationModePush = 1,
	MSGraphMicrosoftAuthenticatorAuthenticationModeAny = 2,
    MSGraphMicrosoftAuthenticatorAuthenticationModeEndOfEnum
};

@interface MSGraphMicrosoftAuthenticatorAuthenticationMode : NSObject

+(MSGraphMicrosoftAuthenticatorAuthenticationMode*) deviceBasedPush;
+(MSGraphMicrosoftAuthenticatorAuthenticationMode*) push;
+(MSGraphMicrosoftAuthenticatorAuthenticationMode*) any;

+(MSGraphMicrosoftAuthenticatorAuthenticationMode*) UnknownEnumValue;

+(MSGraphMicrosoftAuthenticatorAuthenticationMode*) microsoftAuthenticatorAuthenticationModeWithEnumValue:(MSGraphMicrosoftAuthenticatorAuthenticationModeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMicrosoftAuthenticatorAuthenticationModeValue enumValue;

@end


@interface NSString (MSGraphMicrosoftAuthenticatorAuthenticationMode)

- (MSGraphMicrosoftAuthenticatorAuthenticationMode*) toMSGraphMicrosoftAuthenticatorAuthenticationMode;

@end
