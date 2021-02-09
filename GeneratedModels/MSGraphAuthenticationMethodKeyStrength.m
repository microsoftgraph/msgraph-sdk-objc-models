// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAuthenticationMethodKeyStrength.h"

@interface MSGraphAuthenticationMethodKeyStrength () {
    MSGraphAuthenticationMethodKeyStrengthValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAuthenticationMethodKeyStrengthValue enumValue;
@end

@implementation MSGraphAuthenticationMethodKeyStrength

+ (MSGraphAuthenticationMethodKeyStrength*) normal {
    static MSGraphAuthenticationMethodKeyStrength *_normal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _normal = [[MSGraphAuthenticationMethodKeyStrength alloc] init];
        _normal.enumValue = MSGraphAuthenticationMethodKeyStrengthNormal;
    });
    return _normal;
}
+ (MSGraphAuthenticationMethodKeyStrength*) weak {
    static MSGraphAuthenticationMethodKeyStrength *_weak;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _weak = [[MSGraphAuthenticationMethodKeyStrength alloc] init];
        _weak.enumValue = MSGraphAuthenticationMethodKeyStrengthWeak;
    });
    return _weak;
}
+ (MSGraphAuthenticationMethodKeyStrength*) unknown {
    static MSGraphAuthenticationMethodKeyStrength *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphAuthenticationMethodKeyStrength alloc] init];
        _unknown.enumValue = MSGraphAuthenticationMethodKeyStrengthUnknown;
    });
    return _unknown;
}

+ (MSGraphAuthenticationMethodKeyStrength*) UnknownEnumValue {
    static MSGraphAuthenticationMethodKeyStrength *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAuthenticationMethodKeyStrength alloc] init];
        _unknownValue.enumValue = MSGraphAuthenticationMethodKeyStrengthEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAuthenticationMethodKeyStrength*) authenticationMethodKeyStrengthWithEnumValue:(MSGraphAuthenticationMethodKeyStrengthValue)val {

    switch(val)
    {
        case MSGraphAuthenticationMethodKeyStrengthNormal:
            return [MSGraphAuthenticationMethodKeyStrength normal];
        case MSGraphAuthenticationMethodKeyStrengthWeak:
            return [MSGraphAuthenticationMethodKeyStrength weak];
        case MSGraphAuthenticationMethodKeyStrengthUnknown:
            return [MSGraphAuthenticationMethodKeyStrength unknown];
        case MSGraphAuthenticationMethodKeyStrengthEndOfEnum:
        default:
            return [MSGraphAuthenticationMethodKeyStrength UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAuthenticationMethodKeyStrengthNormal:
            return @"normal";
        case MSGraphAuthenticationMethodKeyStrengthWeak:
            return @"weak";
        case MSGraphAuthenticationMethodKeyStrengthUnknown:
            return @"unknown";
        case MSGraphAuthenticationMethodKeyStrengthEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAuthenticationMethodKeyStrengthValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAuthenticationMethodKeyStrength)

- (MSGraphAuthenticationMethodKeyStrength*) toMSGraphAuthenticationMethodKeyStrength{

    if([self isEqualToString:@"normal"])
    {
          return [MSGraphAuthenticationMethodKeyStrength normal];
    }
    else if([self isEqualToString:@"weak"])
    {
          return [MSGraphAuthenticationMethodKeyStrength weak];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphAuthenticationMethodKeyStrength unknown];
    }
    else {
        return [MSGraphAuthenticationMethodKeyStrength UnknownEnumValue];
    }
}

@end
