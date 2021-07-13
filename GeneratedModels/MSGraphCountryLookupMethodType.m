// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCountryLookupMethodType.h"

@interface MSGraphCountryLookupMethodType () {
    MSGraphCountryLookupMethodTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCountryLookupMethodTypeValue enumValue;
@end

@implementation MSGraphCountryLookupMethodType

+ (MSGraphCountryLookupMethodType*) clientIpAddress {
    static MSGraphCountryLookupMethodType *_clientIpAddress;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _clientIpAddress = [[MSGraphCountryLookupMethodType alloc] init];
        _clientIpAddress.enumValue = MSGraphCountryLookupMethodTypeClientIpAddress;
    });
    return _clientIpAddress;
}
+ (MSGraphCountryLookupMethodType*) authenticatorAppGps {
    static MSGraphCountryLookupMethodType *_authenticatorAppGps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _authenticatorAppGps = [[MSGraphCountryLookupMethodType alloc] init];
        _authenticatorAppGps.enumValue = MSGraphCountryLookupMethodTypeAuthenticatorAppGps;
    });
    return _authenticatorAppGps;
}
+ (MSGraphCountryLookupMethodType*) unknownFutureValue {
    static MSGraphCountryLookupMethodType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCountryLookupMethodType alloc] init];
        _unknownFutureValue.enumValue = MSGraphCountryLookupMethodTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCountryLookupMethodType*) UnknownEnumValue {
    static MSGraphCountryLookupMethodType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCountryLookupMethodType alloc] init];
        _unknownValue.enumValue = MSGraphCountryLookupMethodTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCountryLookupMethodType*) countryLookupMethodTypeWithEnumValue:(MSGraphCountryLookupMethodTypeValue)val {

    switch(val)
    {
        case MSGraphCountryLookupMethodTypeClientIpAddress:
            return [MSGraphCountryLookupMethodType clientIpAddress];
        case MSGraphCountryLookupMethodTypeAuthenticatorAppGps:
            return [MSGraphCountryLookupMethodType authenticatorAppGps];
        case MSGraphCountryLookupMethodTypeUnknownFutureValue:
            return [MSGraphCountryLookupMethodType unknownFutureValue];
        case MSGraphCountryLookupMethodTypeEndOfEnum:
        default:
            return [MSGraphCountryLookupMethodType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCountryLookupMethodTypeClientIpAddress:
            return @"clientIpAddress";
        case MSGraphCountryLookupMethodTypeAuthenticatorAppGps:
            return @"authenticatorAppGps";
        case MSGraphCountryLookupMethodTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCountryLookupMethodTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCountryLookupMethodTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCountryLookupMethodType)

- (MSGraphCountryLookupMethodType*) toMSGraphCountryLookupMethodType{

    if([self isEqualToString:@"clientIpAddress"])
    {
          return [MSGraphCountryLookupMethodType clientIpAddress];
    }
    else if([self isEqualToString:@"authenticatorAppGps"])
    {
          return [MSGraphCountryLookupMethodType authenticatorAppGps];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCountryLookupMethodType unknownFutureValue];
    }
    else {
        return [MSGraphCountryLookupMethodType UnknownEnumValue];
    }
}

@end
