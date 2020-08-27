// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsClientPlatform.h"

@interface MSGraphCallRecordsClientPlatform () {
    MSGraphCallRecordsClientPlatformValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsClientPlatformValue enumValue;
@end

@implementation MSGraphCallRecordsClientPlatform

+ (MSGraphCallRecordsClientPlatform*) unknown {
    static MSGraphCallRecordsClientPlatform *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphCallRecordsClientPlatform alloc] init];
        _unknown.enumValue = MSGraphCallRecordsClientPlatformUnknown;
    });
    return _unknown;
}
+ (MSGraphCallRecordsClientPlatform*) windows {
    static MSGraphCallRecordsClientPlatform *_windows;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows = [[MSGraphCallRecordsClientPlatform alloc] init];
        _windows.enumValue = MSGraphCallRecordsClientPlatformWindows;
    });
    return _windows;
}
+ (MSGraphCallRecordsClientPlatform*) macOS {
    static MSGraphCallRecordsClientPlatform *_macOS;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _macOS = [[MSGraphCallRecordsClientPlatform alloc] init];
        _macOS.enumValue = MSGraphCallRecordsClientPlatformMacOS;
    });
    return _macOS;
}
+ (MSGraphCallRecordsClientPlatform*) iOS {
    static MSGraphCallRecordsClientPlatform *_iOS;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _iOS = [[MSGraphCallRecordsClientPlatform alloc] init];
        _iOS.enumValue = MSGraphCallRecordsClientPlatformIOS;
    });
    return _iOS;
}
+ (MSGraphCallRecordsClientPlatform*) android {
    static MSGraphCallRecordsClientPlatform *_android;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _android = [[MSGraphCallRecordsClientPlatform alloc] init];
        _android.enumValue = MSGraphCallRecordsClientPlatformAndroid;
    });
    return _android;
}
+ (MSGraphCallRecordsClientPlatform*) web {
    static MSGraphCallRecordsClientPlatform *_web;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _web = [[MSGraphCallRecordsClientPlatform alloc] init];
        _web.enumValue = MSGraphCallRecordsClientPlatformWeb;
    });
    return _web;
}
+ (MSGraphCallRecordsClientPlatform*) ipPhone {
    static MSGraphCallRecordsClientPlatform *_ipPhone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ipPhone = [[MSGraphCallRecordsClientPlatform alloc] init];
        _ipPhone.enumValue = MSGraphCallRecordsClientPlatformIpPhone;
    });
    return _ipPhone;
}
+ (MSGraphCallRecordsClientPlatform*) roomSystem {
    static MSGraphCallRecordsClientPlatform *_roomSystem;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _roomSystem = [[MSGraphCallRecordsClientPlatform alloc] init];
        _roomSystem.enumValue = MSGraphCallRecordsClientPlatformRoomSystem;
    });
    return _roomSystem;
}
+ (MSGraphCallRecordsClientPlatform*) surfaceHub {
    static MSGraphCallRecordsClientPlatform *_surfaceHub;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _surfaceHub = [[MSGraphCallRecordsClientPlatform alloc] init];
        _surfaceHub.enumValue = MSGraphCallRecordsClientPlatformSurfaceHub;
    });
    return _surfaceHub;
}
+ (MSGraphCallRecordsClientPlatform*) holoLens {
    static MSGraphCallRecordsClientPlatform *_holoLens;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _holoLens = [[MSGraphCallRecordsClientPlatform alloc] init];
        _holoLens.enumValue = MSGraphCallRecordsClientPlatformHoloLens;
    });
    return _holoLens;
}
+ (MSGraphCallRecordsClientPlatform*) unknownFutureValue {
    static MSGraphCallRecordsClientPlatform *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordsClientPlatform alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordsClientPlatformUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordsClientPlatform*) UnknownEnumValue {
    static MSGraphCallRecordsClientPlatform *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsClientPlatform alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsClientPlatformEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsClientPlatform*) clientPlatformWithEnumValue:(MSGraphCallRecordsClientPlatformValue)val {

    switch(val)
    {
        case MSGraphCallRecordsClientPlatformUnknown:
            return [MSGraphCallRecordsClientPlatform unknown];
        case MSGraphCallRecordsClientPlatformWindows:
            return [MSGraphCallRecordsClientPlatform windows];
        case MSGraphCallRecordsClientPlatformMacOS:
            return [MSGraphCallRecordsClientPlatform macOS];
        case MSGraphCallRecordsClientPlatformIOS:
            return [MSGraphCallRecordsClientPlatform iOS];
        case MSGraphCallRecordsClientPlatformAndroid:
            return [MSGraphCallRecordsClientPlatform android];
        case MSGraphCallRecordsClientPlatformWeb:
            return [MSGraphCallRecordsClientPlatform web];
        case MSGraphCallRecordsClientPlatformIpPhone:
            return [MSGraphCallRecordsClientPlatform ipPhone];
        case MSGraphCallRecordsClientPlatformRoomSystem:
            return [MSGraphCallRecordsClientPlatform roomSystem];
        case MSGraphCallRecordsClientPlatformSurfaceHub:
            return [MSGraphCallRecordsClientPlatform surfaceHub];
        case MSGraphCallRecordsClientPlatformHoloLens:
            return [MSGraphCallRecordsClientPlatform holoLens];
        case MSGraphCallRecordsClientPlatformUnknownFutureValue:
            return [MSGraphCallRecordsClientPlatform unknownFutureValue];
        case MSGraphCallRecordsClientPlatformEndOfEnum:
        default:
            return [MSGraphCallRecordsClientPlatform UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsClientPlatformUnknown:
            return @"unknown";
        case MSGraphCallRecordsClientPlatformWindows:
            return @"windows";
        case MSGraphCallRecordsClientPlatformMacOS:
            return @"macOS";
        case MSGraphCallRecordsClientPlatformIOS:
            return @"iOS";
        case MSGraphCallRecordsClientPlatformAndroid:
            return @"android";
        case MSGraphCallRecordsClientPlatformWeb:
            return @"web";
        case MSGraphCallRecordsClientPlatformIpPhone:
            return @"ipPhone";
        case MSGraphCallRecordsClientPlatformRoomSystem:
            return @"roomSystem";
        case MSGraphCallRecordsClientPlatformSurfaceHub:
            return @"surfaceHub";
        case MSGraphCallRecordsClientPlatformHoloLens:
            return @"holoLens";
        case MSGraphCallRecordsClientPlatformUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordsClientPlatformEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsClientPlatformValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsClientPlatform)

- (MSGraphCallRecordsClientPlatform*) toMSGraphCallRecordsClientPlatform{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphCallRecordsClientPlatform unknown];
    }
    else if([self isEqualToString:@"windows"])
    {
          return [MSGraphCallRecordsClientPlatform windows];
    }
    else if([self isEqualToString:@"macOS"])
    {
          return [MSGraphCallRecordsClientPlatform macOS];
    }
    else if([self isEqualToString:@"iOS"])
    {
          return [MSGraphCallRecordsClientPlatform iOS];
    }
    else if([self isEqualToString:@"android"])
    {
          return [MSGraphCallRecordsClientPlatform android];
    }
    else if([self isEqualToString:@"web"])
    {
          return [MSGraphCallRecordsClientPlatform web];
    }
    else if([self isEqualToString:@"ipPhone"])
    {
          return [MSGraphCallRecordsClientPlatform ipPhone];
    }
    else if([self isEqualToString:@"roomSystem"])
    {
          return [MSGraphCallRecordsClientPlatform roomSystem];
    }
    else if([self isEqualToString:@"surfaceHub"])
    {
          return [MSGraphCallRecordsClientPlatform surfaceHub];
    }
    else if([self isEqualToString:@"holoLens"])
    {
          return [MSGraphCallRecordsClientPlatform holoLens];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordsClientPlatform unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordsClientPlatform UnknownEnumValue];
    }
}

@end
