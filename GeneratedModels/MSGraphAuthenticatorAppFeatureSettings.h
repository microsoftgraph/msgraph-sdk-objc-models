// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAuthenticatorAppFeatureSettingsValue){

	MSGraphAuthenticatorAppFeatureSettingsRequireNumberMatching = 1,
    MSGraphAuthenticatorAppFeatureSettingsEndOfEnum
};

@interface MSGraphAuthenticatorAppFeatureSettings : NSObject

+(MSGraphAuthenticatorAppFeatureSettings*) requireNumberMatching;

+(MSGraphAuthenticatorAppFeatureSettings*) UnknownEnumValue;

+(MSGraphAuthenticatorAppFeatureSettings*) authenticatorAppFeatureSettingsWithEnumValue:(MSGraphAuthenticatorAppFeatureSettingsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAuthenticatorAppFeatureSettingsValue enumValue;

@end


@interface NSString (MSGraphAuthenticatorAppFeatureSettings)

- (MSGraphAuthenticatorAppFeatureSettings*) toMSGraphAuthenticatorAppFeatureSettings;

@end
