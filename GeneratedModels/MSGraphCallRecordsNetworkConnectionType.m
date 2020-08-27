// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsNetworkConnectionType.h"

@interface MSGraphCallRecordsNetworkConnectionType () {
    MSGraphCallRecordsNetworkConnectionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsNetworkConnectionTypeValue enumValue;
@end

@implementation MSGraphCallRecordsNetworkConnectionType

+ (MSGraphCallRecordsNetworkConnectionType*) unknown {
    static MSGraphCallRecordsNetworkConnectionType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphCallRecordsNetworkConnectionType alloc] init];
        _unknown.enumValue = MSGraphCallRecordsNetworkConnectionTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphCallRecordsNetworkConnectionType*) wired {
    static MSGraphCallRecordsNetworkConnectionType *_wired;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wired = [[MSGraphCallRecordsNetworkConnectionType alloc] init];
        _wired.enumValue = MSGraphCallRecordsNetworkConnectionTypeWired;
    });
    return _wired;
}
+ (MSGraphCallRecordsNetworkConnectionType*) wifi {
    static MSGraphCallRecordsNetworkConnectionType *_wifi;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wifi = [[MSGraphCallRecordsNetworkConnectionType alloc] init];
        _wifi.enumValue = MSGraphCallRecordsNetworkConnectionTypeWifi;
    });
    return _wifi;
}
+ (MSGraphCallRecordsNetworkConnectionType*) mobile {
    static MSGraphCallRecordsNetworkConnectionType *_mobile;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mobile = [[MSGraphCallRecordsNetworkConnectionType alloc] init];
        _mobile.enumValue = MSGraphCallRecordsNetworkConnectionTypeMobile;
    });
    return _mobile;
}
+ (MSGraphCallRecordsNetworkConnectionType*) tunnel {
    static MSGraphCallRecordsNetworkConnectionType *_tunnel;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tunnel = [[MSGraphCallRecordsNetworkConnectionType alloc] init];
        _tunnel.enumValue = MSGraphCallRecordsNetworkConnectionTypeTunnel;
    });
    return _tunnel;
}
+ (MSGraphCallRecordsNetworkConnectionType*) unknownFutureValue {
    static MSGraphCallRecordsNetworkConnectionType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordsNetworkConnectionType alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordsNetworkConnectionTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordsNetworkConnectionType*) UnknownEnumValue {
    static MSGraphCallRecordsNetworkConnectionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsNetworkConnectionType alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsNetworkConnectionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsNetworkConnectionType*) networkConnectionTypeWithEnumValue:(MSGraphCallRecordsNetworkConnectionTypeValue)val {

    switch(val)
    {
        case MSGraphCallRecordsNetworkConnectionTypeUnknown:
            return [MSGraphCallRecordsNetworkConnectionType unknown];
        case MSGraphCallRecordsNetworkConnectionTypeWired:
            return [MSGraphCallRecordsNetworkConnectionType wired];
        case MSGraphCallRecordsNetworkConnectionTypeWifi:
            return [MSGraphCallRecordsNetworkConnectionType wifi];
        case MSGraphCallRecordsNetworkConnectionTypeMobile:
            return [MSGraphCallRecordsNetworkConnectionType mobile];
        case MSGraphCallRecordsNetworkConnectionTypeTunnel:
            return [MSGraphCallRecordsNetworkConnectionType tunnel];
        case MSGraphCallRecordsNetworkConnectionTypeUnknownFutureValue:
            return [MSGraphCallRecordsNetworkConnectionType unknownFutureValue];
        case MSGraphCallRecordsNetworkConnectionTypeEndOfEnum:
        default:
            return [MSGraphCallRecordsNetworkConnectionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsNetworkConnectionTypeUnknown:
            return @"unknown";
        case MSGraphCallRecordsNetworkConnectionTypeWired:
            return @"wired";
        case MSGraphCallRecordsNetworkConnectionTypeWifi:
            return @"wifi";
        case MSGraphCallRecordsNetworkConnectionTypeMobile:
            return @"mobile";
        case MSGraphCallRecordsNetworkConnectionTypeTunnel:
            return @"tunnel";
        case MSGraphCallRecordsNetworkConnectionTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordsNetworkConnectionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsNetworkConnectionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsNetworkConnectionType)

- (MSGraphCallRecordsNetworkConnectionType*) toMSGraphCallRecordsNetworkConnectionType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphCallRecordsNetworkConnectionType unknown];
    }
    else if([self isEqualToString:@"wired"])
    {
          return [MSGraphCallRecordsNetworkConnectionType wired];
    }
    else if([self isEqualToString:@"wifi"])
    {
          return [MSGraphCallRecordsNetworkConnectionType wifi];
    }
    else if([self isEqualToString:@"mobile"])
    {
          return [MSGraphCallRecordsNetworkConnectionType mobile];
    }
    else if([self isEqualToString:@"tunnel"])
    {
          return [MSGraphCallRecordsNetworkConnectionType tunnel];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordsNetworkConnectionType unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordsNetworkConnectionType UnknownEnumValue];
    }
}

@end
