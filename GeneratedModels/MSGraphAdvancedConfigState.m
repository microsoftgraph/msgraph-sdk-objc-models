// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAdvancedConfigState.h"

@interface MSGraphAdvancedConfigState () {
    MSGraphAdvancedConfigStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAdvancedConfigStateValue enumValue;
@end

@implementation MSGraphAdvancedConfigState

+ (MSGraphAdvancedConfigState*) default {
    static MSGraphAdvancedConfigState *_default;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _default = [[MSGraphAdvancedConfigState alloc] init];
        _default.enumValue = MSGraphAdvancedConfigStateDefault;
    });
    return _default;
}
+ (MSGraphAdvancedConfigState*) enabled {
    static MSGraphAdvancedConfigState *_enabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enabled = [[MSGraphAdvancedConfigState alloc] init];
        _enabled.enumValue = MSGraphAdvancedConfigStateEnabled;
    });
    return _enabled;
}
+ (MSGraphAdvancedConfigState*) disabled {
    static MSGraphAdvancedConfigState *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphAdvancedConfigState alloc] init];
        _disabled.enumValue = MSGraphAdvancedConfigStateDisabled;
    });
    return _disabled;
}
+ (MSGraphAdvancedConfigState*) unknownFutureValue {
    static MSGraphAdvancedConfigState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAdvancedConfigState alloc] init];
        _unknownFutureValue.enumValue = MSGraphAdvancedConfigStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAdvancedConfigState*) UnknownEnumValue {
    static MSGraphAdvancedConfigState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAdvancedConfigState alloc] init];
        _unknownValue.enumValue = MSGraphAdvancedConfigStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAdvancedConfigState*) advancedConfigStateWithEnumValue:(MSGraphAdvancedConfigStateValue)val {

    switch(val)
    {
        case MSGraphAdvancedConfigStateDefault:
            return [MSGraphAdvancedConfigState default];
        case MSGraphAdvancedConfigStateEnabled:
            return [MSGraphAdvancedConfigState enabled];
        case MSGraphAdvancedConfigStateDisabled:
            return [MSGraphAdvancedConfigState disabled];
        case MSGraphAdvancedConfigStateUnknownFutureValue:
            return [MSGraphAdvancedConfigState unknownFutureValue];
        case MSGraphAdvancedConfigStateEndOfEnum:
        default:
            return [MSGraphAdvancedConfigState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAdvancedConfigStateDefault:
            return @"default";
        case MSGraphAdvancedConfigStateEnabled:
            return @"enabled";
        case MSGraphAdvancedConfigStateDisabled:
            return @"disabled";
        case MSGraphAdvancedConfigStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAdvancedConfigStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAdvancedConfigStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAdvancedConfigState)

- (MSGraphAdvancedConfigState*) toMSGraphAdvancedConfigState{

    if([self isEqualToString:@"default"])
    {
          return [MSGraphAdvancedConfigState default];
    }
    else if([self isEqualToString:@"enabled"])
    {
          return [MSGraphAdvancedConfigState enabled];
    }
    else if([self isEqualToString:@"disabled"])
    {
          return [MSGraphAdvancedConfigState disabled];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAdvancedConfigState unknownFutureValue];
    }
    else {
        return [MSGraphAdvancedConfigState UnknownEnumValue];
    }
}

@end
