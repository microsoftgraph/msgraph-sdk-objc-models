// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalEmailOtpState.h"

@interface MSGraphExternalEmailOtpState () {
    MSGraphExternalEmailOtpStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExternalEmailOtpStateValue enumValue;
@end

@implementation MSGraphExternalEmailOtpState

+ (MSGraphExternalEmailOtpState*) default {
    static MSGraphExternalEmailOtpState *_default;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _default = [[MSGraphExternalEmailOtpState alloc] init];
        _default.enumValue = MSGraphExternalEmailOtpStateDefault;
    });
    return _default;
}
+ (MSGraphExternalEmailOtpState*) enabled {
    static MSGraphExternalEmailOtpState *_enabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enabled = [[MSGraphExternalEmailOtpState alloc] init];
        _enabled.enumValue = MSGraphExternalEmailOtpStateEnabled;
    });
    return _enabled;
}
+ (MSGraphExternalEmailOtpState*) disabled {
    static MSGraphExternalEmailOtpState *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphExternalEmailOtpState alloc] init];
        _disabled.enumValue = MSGraphExternalEmailOtpStateDisabled;
    });
    return _disabled;
}
+ (MSGraphExternalEmailOtpState*) unknownFutureValue {
    static MSGraphExternalEmailOtpState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphExternalEmailOtpState alloc] init];
        _unknownFutureValue.enumValue = MSGraphExternalEmailOtpStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphExternalEmailOtpState*) UnknownEnumValue {
    static MSGraphExternalEmailOtpState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExternalEmailOtpState alloc] init];
        _unknownValue.enumValue = MSGraphExternalEmailOtpStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExternalEmailOtpState*) externalEmailOtpStateWithEnumValue:(MSGraphExternalEmailOtpStateValue)val {

    switch(val)
    {
        case MSGraphExternalEmailOtpStateDefault:
            return [MSGraphExternalEmailOtpState default];
        case MSGraphExternalEmailOtpStateEnabled:
            return [MSGraphExternalEmailOtpState enabled];
        case MSGraphExternalEmailOtpStateDisabled:
            return [MSGraphExternalEmailOtpState disabled];
        case MSGraphExternalEmailOtpStateUnknownFutureValue:
            return [MSGraphExternalEmailOtpState unknownFutureValue];
        case MSGraphExternalEmailOtpStateEndOfEnum:
        default:
            return [MSGraphExternalEmailOtpState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExternalEmailOtpStateDefault:
            return @"default";
        case MSGraphExternalEmailOtpStateEnabled:
            return @"enabled";
        case MSGraphExternalEmailOtpStateDisabled:
            return @"disabled";
        case MSGraphExternalEmailOtpStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphExternalEmailOtpStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExternalEmailOtpStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExternalEmailOtpState)

- (MSGraphExternalEmailOtpState*) toMSGraphExternalEmailOtpState{

    if([self isEqualToString:@"default"])
    {
          return [MSGraphExternalEmailOtpState default];
    }
    else if([self isEqualToString:@"enabled"])
    {
          return [MSGraphExternalEmailOtpState enabled];
    }
    else if([self isEqualToString:@"disabled"])
    {
          return [MSGraphExternalEmailOtpState disabled];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphExternalEmailOtpState unknownFutureValue];
    }
    else {
        return [MSGraphExternalEmailOtpState UnknownEnumValue];
    }
}

@end
