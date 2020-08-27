// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsWifiRadioType.h"

@interface MSGraphCallRecordsWifiRadioType () {
    MSGraphCallRecordsWifiRadioTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsWifiRadioTypeValue enumValue;
@end

@implementation MSGraphCallRecordsWifiRadioType

+ (MSGraphCallRecordsWifiRadioType*) unknown {
    static MSGraphCallRecordsWifiRadioType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphCallRecordsWifiRadioType alloc] init];
        _unknown.enumValue = MSGraphCallRecordsWifiRadioTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphCallRecordsWifiRadioType*) wifi80211a {
    static MSGraphCallRecordsWifiRadioType *_wifi80211a;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wifi80211a = [[MSGraphCallRecordsWifiRadioType alloc] init];
        _wifi80211a.enumValue = MSGraphCallRecordsWifiRadioTypeWifi80211a;
    });
    return _wifi80211a;
}
+ (MSGraphCallRecordsWifiRadioType*) wifi80211b {
    static MSGraphCallRecordsWifiRadioType *_wifi80211b;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wifi80211b = [[MSGraphCallRecordsWifiRadioType alloc] init];
        _wifi80211b.enumValue = MSGraphCallRecordsWifiRadioTypeWifi80211b;
    });
    return _wifi80211b;
}
+ (MSGraphCallRecordsWifiRadioType*) wifi80211g {
    static MSGraphCallRecordsWifiRadioType *_wifi80211g;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wifi80211g = [[MSGraphCallRecordsWifiRadioType alloc] init];
        _wifi80211g.enumValue = MSGraphCallRecordsWifiRadioTypeWifi80211g;
    });
    return _wifi80211g;
}
+ (MSGraphCallRecordsWifiRadioType*) wifi80211n {
    static MSGraphCallRecordsWifiRadioType *_wifi80211n;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wifi80211n = [[MSGraphCallRecordsWifiRadioType alloc] init];
        _wifi80211n.enumValue = MSGraphCallRecordsWifiRadioTypeWifi80211n;
    });
    return _wifi80211n;
}
+ (MSGraphCallRecordsWifiRadioType*) wifi80211ac {
    static MSGraphCallRecordsWifiRadioType *_wifi80211ac;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wifi80211ac = [[MSGraphCallRecordsWifiRadioType alloc] init];
        _wifi80211ac.enumValue = MSGraphCallRecordsWifiRadioTypeWifi80211ac;
    });
    return _wifi80211ac;
}
+ (MSGraphCallRecordsWifiRadioType*) wifi80211ax {
    static MSGraphCallRecordsWifiRadioType *_wifi80211ax;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wifi80211ax = [[MSGraphCallRecordsWifiRadioType alloc] init];
        _wifi80211ax.enumValue = MSGraphCallRecordsWifiRadioTypeWifi80211ax;
    });
    return _wifi80211ax;
}
+ (MSGraphCallRecordsWifiRadioType*) unknownFutureValue {
    static MSGraphCallRecordsWifiRadioType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordsWifiRadioType alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordsWifiRadioTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordsWifiRadioType*) UnknownEnumValue {
    static MSGraphCallRecordsWifiRadioType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsWifiRadioType alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsWifiRadioTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsWifiRadioType*) wifiRadioTypeWithEnumValue:(MSGraphCallRecordsWifiRadioTypeValue)val {

    switch(val)
    {
        case MSGraphCallRecordsWifiRadioTypeUnknown:
            return [MSGraphCallRecordsWifiRadioType unknown];
        case MSGraphCallRecordsWifiRadioTypeWifi80211a:
            return [MSGraphCallRecordsWifiRadioType wifi80211a];
        case MSGraphCallRecordsWifiRadioTypeWifi80211b:
            return [MSGraphCallRecordsWifiRadioType wifi80211b];
        case MSGraphCallRecordsWifiRadioTypeWifi80211g:
            return [MSGraphCallRecordsWifiRadioType wifi80211g];
        case MSGraphCallRecordsWifiRadioTypeWifi80211n:
            return [MSGraphCallRecordsWifiRadioType wifi80211n];
        case MSGraphCallRecordsWifiRadioTypeWifi80211ac:
            return [MSGraphCallRecordsWifiRadioType wifi80211ac];
        case MSGraphCallRecordsWifiRadioTypeWifi80211ax:
            return [MSGraphCallRecordsWifiRadioType wifi80211ax];
        case MSGraphCallRecordsWifiRadioTypeUnknownFutureValue:
            return [MSGraphCallRecordsWifiRadioType unknownFutureValue];
        case MSGraphCallRecordsWifiRadioTypeEndOfEnum:
        default:
            return [MSGraphCallRecordsWifiRadioType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsWifiRadioTypeUnknown:
            return @"unknown";
        case MSGraphCallRecordsWifiRadioTypeWifi80211a:
            return @"wifi80211a";
        case MSGraphCallRecordsWifiRadioTypeWifi80211b:
            return @"wifi80211b";
        case MSGraphCallRecordsWifiRadioTypeWifi80211g:
            return @"wifi80211g";
        case MSGraphCallRecordsWifiRadioTypeWifi80211n:
            return @"wifi80211n";
        case MSGraphCallRecordsWifiRadioTypeWifi80211ac:
            return @"wifi80211ac";
        case MSGraphCallRecordsWifiRadioTypeWifi80211ax:
            return @"wifi80211ax";
        case MSGraphCallRecordsWifiRadioTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordsWifiRadioTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsWifiRadioTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsWifiRadioType)

- (MSGraphCallRecordsWifiRadioType*) toMSGraphCallRecordsWifiRadioType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphCallRecordsWifiRadioType unknown];
    }
    else if([self isEqualToString:@"wifi80211a"])
    {
          return [MSGraphCallRecordsWifiRadioType wifi80211a];
    }
    else if([self isEqualToString:@"wifi80211b"])
    {
          return [MSGraphCallRecordsWifiRadioType wifi80211b];
    }
    else if([self isEqualToString:@"wifi80211g"])
    {
          return [MSGraphCallRecordsWifiRadioType wifi80211g];
    }
    else if([self isEqualToString:@"wifi80211n"])
    {
          return [MSGraphCallRecordsWifiRadioType wifi80211n];
    }
    else if([self isEqualToString:@"wifi80211ac"])
    {
          return [MSGraphCallRecordsWifiRadioType wifi80211ac];
    }
    else if([self isEqualToString:@"wifi80211ax"])
    {
          return [MSGraphCallRecordsWifiRadioType wifi80211ax];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordsWifiRadioType unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordsWifiRadioType UnknownEnumValue];
    }
}

@end
