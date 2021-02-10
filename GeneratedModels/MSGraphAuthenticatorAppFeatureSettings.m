// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAuthenticatorAppFeatureSettings.h"

@interface MSGraphAuthenticatorAppFeatureSettings () {
    MSGraphAuthenticatorAppFeatureSettingsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAuthenticatorAppFeatureSettingsValue enumValue;
@end

@implementation MSGraphAuthenticatorAppFeatureSettings

+ (MSGraphAuthenticatorAppFeatureSettings*) requireNumberMatching {
    static MSGraphAuthenticatorAppFeatureSettings *_requireNumberMatching;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _requireNumberMatching = [[MSGraphAuthenticatorAppFeatureSettings alloc] init];
        _requireNumberMatching.enumValue = MSGraphAuthenticatorAppFeatureSettingsRequireNumberMatching;
    });
    return _requireNumberMatching;
}

+ (MSGraphAuthenticatorAppFeatureSettings*) UnknownEnumValue {
    static MSGraphAuthenticatorAppFeatureSettings *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAuthenticatorAppFeatureSettings alloc] init];
        _unknownValue.enumValue = MSGraphAuthenticatorAppFeatureSettingsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAuthenticatorAppFeatureSettings*) authenticatorAppFeatureSettingsWithEnumValue:(MSGraphAuthenticatorAppFeatureSettingsValue)val {

    switch(val)
    {
        case MSGraphAuthenticatorAppFeatureSettingsRequireNumberMatching:
            return [MSGraphAuthenticatorAppFeatureSettings requireNumberMatching];
        case MSGraphAuthenticatorAppFeatureSettingsEndOfEnum:
        default:
            return [MSGraphAuthenticatorAppFeatureSettings UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAuthenticatorAppFeatureSettingsRequireNumberMatching:
            return @"requireNumberMatching";
        case MSGraphAuthenticatorAppFeatureSettingsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAuthenticatorAppFeatureSettingsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAuthenticatorAppFeatureSettings)

- (MSGraphAuthenticatorAppFeatureSettings*) toMSGraphAuthenticatorAppFeatureSettings{

    if([self isEqualToString:@"requireNumberMatching"])
    {
          return [MSGraphAuthenticatorAppFeatureSettings requireNumberMatching];
    }
    else {
        return [MSGraphAuthenticatorAppFeatureSettings UnknownEnumValue];
    }
}

@end
