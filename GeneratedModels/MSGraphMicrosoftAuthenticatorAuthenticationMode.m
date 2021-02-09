// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMicrosoftAuthenticatorAuthenticationMode.h"

@interface MSGraphMicrosoftAuthenticatorAuthenticationMode () {
    MSGraphMicrosoftAuthenticatorAuthenticationModeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMicrosoftAuthenticatorAuthenticationModeValue enumValue;
@end

@implementation MSGraphMicrosoftAuthenticatorAuthenticationMode

+ (MSGraphMicrosoftAuthenticatorAuthenticationMode*) deviceBasedPush {
    static MSGraphMicrosoftAuthenticatorAuthenticationMode *_deviceBasedPush;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceBasedPush = [[MSGraphMicrosoftAuthenticatorAuthenticationMode alloc] init];
        _deviceBasedPush.enumValue = MSGraphMicrosoftAuthenticatorAuthenticationModeDeviceBasedPush;
    });
    return _deviceBasedPush;
}
+ (MSGraphMicrosoftAuthenticatorAuthenticationMode*) push {
    static MSGraphMicrosoftAuthenticatorAuthenticationMode *_push;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _push = [[MSGraphMicrosoftAuthenticatorAuthenticationMode alloc] init];
        _push.enumValue = MSGraphMicrosoftAuthenticatorAuthenticationModePush;
    });
    return _push;
}
+ (MSGraphMicrosoftAuthenticatorAuthenticationMode*) any {
    static MSGraphMicrosoftAuthenticatorAuthenticationMode *_any;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _any = [[MSGraphMicrosoftAuthenticatorAuthenticationMode alloc] init];
        _any.enumValue = MSGraphMicrosoftAuthenticatorAuthenticationModeAny;
    });
    return _any;
}

+ (MSGraphMicrosoftAuthenticatorAuthenticationMode*) UnknownEnumValue {
    static MSGraphMicrosoftAuthenticatorAuthenticationMode *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMicrosoftAuthenticatorAuthenticationMode alloc] init];
        _unknownValue.enumValue = MSGraphMicrosoftAuthenticatorAuthenticationModeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMicrosoftAuthenticatorAuthenticationMode*) microsoftAuthenticatorAuthenticationModeWithEnumValue:(MSGraphMicrosoftAuthenticatorAuthenticationModeValue)val {

    switch(val)
    {
        case MSGraphMicrosoftAuthenticatorAuthenticationModeDeviceBasedPush:
            return [MSGraphMicrosoftAuthenticatorAuthenticationMode deviceBasedPush];
        case MSGraphMicrosoftAuthenticatorAuthenticationModePush:
            return [MSGraphMicrosoftAuthenticatorAuthenticationMode push];
        case MSGraphMicrosoftAuthenticatorAuthenticationModeAny:
            return [MSGraphMicrosoftAuthenticatorAuthenticationMode any];
        case MSGraphMicrosoftAuthenticatorAuthenticationModeEndOfEnum:
        default:
            return [MSGraphMicrosoftAuthenticatorAuthenticationMode UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMicrosoftAuthenticatorAuthenticationModeDeviceBasedPush:
            return @"deviceBasedPush";
        case MSGraphMicrosoftAuthenticatorAuthenticationModePush:
            return @"push";
        case MSGraphMicrosoftAuthenticatorAuthenticationModeAny:
            return @"any";
        case MSGraphMicrosoftAuthenticatorAuthenticationModeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMicrosoftAuthenticatorAuthenticationModeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMicrosoftAuthenticatorAuthenticationMode)

- (MSGraphMicrosoftAuthenticatorAuthenticationMode*) toMSGraphMicrosoftAuthenticatorAuthenticationMode{

    if([self isEqualToString:@"deviceBasedPush"])
    {
          return [MSGraphMicrosoftAuthenticatorAuthenticationMode deviceBasedPush];
    }
    else if([self isEqualToString:@"push"])
    {
          return [MSGraphMicrosoftAuthenticatorAuthenticationMode push];
    }
    else if([self isEqualToString:@"any"])
    {
          return [MSGraphMicrosoftAuthenticatorAuthenticationMode any];
    }
    else {
        return [MSGraphMicrosoftAuthenticatorAuthenticationMode UnknownEnumValue];
    }
}

@end
