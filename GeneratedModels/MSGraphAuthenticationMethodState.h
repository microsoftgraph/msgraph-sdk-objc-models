// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAuthenticationMethodStateValue){

	MSGraphAuthenticationMethodStateEnabled = 0,
	MSGraphAuthenticationMethodStateDisabled = 1,
    MSGraphAuthenticationMethodStateEndOfEnum
};

@interface MSGraphAuthenticationMethodState : NSObject

+(MSGraphAuthenticationMethodState*) enabled;
+(MSGraphAuthenticationMethodState*) disabled;

+(MSGraphAuthenticationMethodState*) UnknownEnumValue;

+(MSGraphAuthenticationMethodState*) authenticationMethodStateWithEnumValue:(MSGraphAuthenticationMethodStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAuthenticationMethodStateValue enumValue;

@end


@interface NSString (MSGraphAuthenticationMethodState)

- (MSGraphAuthenticationMethodState*) toMSGraphAuthenticationMethodState;

@end
