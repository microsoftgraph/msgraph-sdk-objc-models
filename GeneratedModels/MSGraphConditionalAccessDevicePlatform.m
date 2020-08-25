// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConditionalAccessDevicePlatform.h"

@interface MSGraphConditionalAccessDevicePlatform () {
    MSGraphConditionalAccessDevicePlatformValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphConditionalAccessDevicePlatformValue enumValue;
@end

@implementation MSGraphConditionalAccessDevicePlatform

+ (MSGraphConditionalAccessDevicePlatform*) android {
    static MSGraphConditionalAccessDevicePlatform *_android;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _android = [[MSGraphConditionalAccessDevicePlatform alloc] init];
        _android.enumValue = MSGraphConditionalAccessDevicePlatformAndroid;
    });
    return _android;
}
+ (MSGraphConditionalAccessDevicePlatform*) iOS {
    static MSGraphConditionalAccessDevicePlatform *_iOS;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _iOS = [[MSGraphConditionalAccessDevicePlatform alloc] init];
        _iOS.enumValue = MSGraphConditionalAccessDevicePlatformIOS;
    });
    return _iOS;
}
+ (MSGraphConditionalAccessDevicePlatform*) windows {
    static MSGraphConditionalAccessDevicePlatform *_windows;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows = [[MSGraphConditionalAccessDevicePlatform alloc] init];
        _windows.enumValue = MSGraphConditionalAccessDevicePlatformWindows;
    });
    return _windows;
}
+ (MSGraphConditionalAccessDevicePlatform*) windowsPhone {
    static MSGraphConditionalAccessDevicePlatform *_windowsPhone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windowsPhone = [[MSGraphConditionalAccessDevicePlatform alloc] init];
        _windowsPhone.enumValue = MSGraphConditionalAccessDevicePlatformWindowsPhone;
    });
    return _windowsPhone;
}
+ (MSGraphConditionalAccessDevicePlatform*) macOS {
    static MSGraphConditionalAccessDevicePlatform *_macOS;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _macOS = [[MSGraphConditionalAccessDevicePlatform alloc] init];
        _macOS.enumValue = MSGraphConditionalAccessDevicePlatformMacOS;
    });
    return _macOS;
}
+ (MSGraphConditionalAccessDevicePlatform*) all {
    static MSGraphConditionalAccessDevicePlatform *_all;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _all = [[MSGraphConditionalAccessDevicePlatform alloc] init];
        _all.enumValue = MSGraphConditionalAccessDevicePlatformAll;
    });
    return _all;
}
+ (MSGraphConditionalAccessDevicePlatform*) unknownFutureValue {
    static MSGraphConditionalAccessDevicePlatform *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphConditionalAccessDevicePlatform alloc] init];
        _unknownFutureValue.enumValue = MSGraphConditionalAccessDevicePlatformUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphConditionalAccessDevicePlatform*) UnknownEnumValue {
    static MSGraphConditionalAccessDevicePlatform *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphConditionalAccessDevicePlatform alloc] init];
        _unknownValue.enumValue = MSGraphConditionalAccessDevicePlatformEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphConditionalAccessDevicePlatform*) conditionalAccessDevicePlatformWithEnumValue:(MSGraphConditionalAccessDevicePlatformValue)val {

    switch(val)
    {
        case MSGraphConditionalAccessDevicePlatformAndroid:
            return [MSGraphConditionalAccessDevicePlatform android];
        case MSGraphConditionalAccessDevicePlatformIOS:
            return [MSGraphConditionalAccessDevicePlatform iOS];
        case MSGraphConditionalAccessDevicePlatformWindows:
            return [MSGraphConditionalAccessDevicePlatform windows];
        case MSGraphConditionalAccessDevicePlatformWindowsPhone:
            return [MSGraphConditionalAccessDevicePlatform windowsPhone];
        case MSGraphConditionalAccessDevicePlatformMacOS:
            return [MSGraphConditionalAccessDevicePlatform macOS];
        case MSGraphConditionalAccessDevicePlatformAll:
            return [MSGraphConditionalAccessDevicePlatform all];
        case MSGraphConditionalAccessDevicePlatformUnknownFutureValue:
            return [MSGraphConditionalAccessDevicePlatform unknownFutureValue];
        case MSGraphConditionalAccessDevicePlatformEndOfEnum:
        default:
            return [MSGraphConditionalAccessDevicePlatform UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphConditionalAccessDevicePlatformAndroid:
            return @"android";
        case MSGraphConditionalAccessDevicePlatformIOS:
            return @"iOS";
        case MSGraphConditionalAccessDevicePlatformWindows:
            return @"windows";
        case MSGraphConditionalAccessDevicePlatformWindowsPhone:
            return @"windowsPhone";
        case MSGraphConditionalAccessDevicePlatformMacOS:
            return @"macOS";
        case MSGraphConditionalAccessDevicePlatformAll:
            return @"all";
        case MSGraphConditionalAccessDevicePlatformUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphConditionalAccessDevicePlatformEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphConditionalAccessDevicePlatformValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphConditionalAccessDevicePlatform)

- (MSGraphConditionalAccessDevicePlatform*) toMSGraphConditionalAccessDevicePlatform{

    if([self isEqualToString:@"android"])
    {
          return [MSGraphConditionalAccessDevicePlatform android];
    }
    else if([self isEqualToString:@"iOS"])
    {
          return [MSGraphConditionalAccessDevicePlatform iOS];
    }
    else if([self isEqualToString:@"windows"])
    {
          return [MSGraphConditionalAccessDevicePlatform windows];
    }
    else if([self isEqualToString:@"windowsPhone"])
    {
          return [MSGraphConditionalAccessDevicePlatform windowsPhone];
    }
    else if([self isEqualToString:@"macOS"])
    {
          return [MSGraphConditionalAccessDevicePlatform macOS];
    }
    else if([self isEqualToString:@"all"])
    {
          return [MSGraphConditionalAccessDevicePlatform all];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphConditionalAccessDevicePlatform unknownFutureValue];
    }
    else {
        return [MSGraphConditionalAccessDevicePlatform UnknownEnumValue];
    }
}

@end
