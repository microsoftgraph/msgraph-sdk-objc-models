// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAuthenticationMethodState.h"

@interface MSGraphAuthenticationMethodState () {
    MSGraphAuthenticationMethodStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAuthenticationMethodStateValue enumValue;
@end

@implementation MSGraphAuthenticationMethodState

+ (MSGraphAuthenticationMethodState*) enabled {
    static MSGraphAuthenticationMethodState *_enabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enabled = [[MSGraphAuthenticationMethodState alloc] init];
        _enabled.enumValue = MSGraphAuthenticationMethodStateEnabled;
    });
    return _enabled;
}
+ (MSGraphAuthenticationMethodState*) disabled {
    static MSGraphAuthenticationMethodState *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphAuthenticationMethodState alloc] init];
        _disabled.enumValue = MSGraphAuthenticationMethodStateDisabled;
    });
    return _disabled;
}

+ (MSGraphAuthenticationMethodState*) UnknownEnumValue {
    static MSGraphAuthenticationMethodState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAuthenticationMethodState alloc] init];
        _unknownValue.enumValue = MSGraphAuthenticationMethodStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAuthenticationMethodState*) authenticationMethodStateWithEnumValue:(MSGraphAuthenticationMethodStateValue)val {

    switch(val)
    {
        case MSGraphAuthenticationMethodStateEnabled:
            return [MSGraphAuthenticationMethodState enabled];
        case MSGraphAuthenticationMethodStateDisabled:
            return [MSGraphAuthenticationMethodState disabled];
        case MSGraphAuthenticationMethodStateEndOfEnum:
        default:
            return [MSGraphAuthenticationMethodState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAuthenticationMethodStateEnabled:
            return @"enabled";
        case MSGraphAuthenticationMethodStateDisabled:
            return @"disabled";
        case MSGraphAuthenticationMethodStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAuthenticationMethodStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAuthenticationMethodState)

- (MSGraphAuthenticationMethodState*) toMSGraphAuthenticationMethodState{

    if([self isEqualToString:@"enabled"])
    {
          return [MSGraphAuthenticationMethodState enabled];
    }
    else if([self isEqualToString:@"disabled"])
    {
          return [MSGraphAuthenticationMethodState disabled];
    }
    else {
        return [MSGraphAuthenticationMethodState UnknownEnumValue];
    }
}

@end
