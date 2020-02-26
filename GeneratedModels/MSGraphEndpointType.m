// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEndpointType.h"

@interface MSGraphEndpointType () {
    MSGraphEndpointTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEndpointTypeValue enumValue;
@end

@implementation MSGraphEndpointType

+ (MSGraphEndpointType*) default {
    static MSGraphEndpointType *_default;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _default = [[MSGraphEndpointType alloc] init];
        _default.enumValue = MSGraphEndpointTypeDefault;
    });
    return _default;
}
+ (MSGraphEndpointType*) voicemail {
    static MSGraphEndpointType *_voicemail;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _voicemail = [[MSGraphEndpointType alloc] init];
        _voicemail.enumValue = MSGraphEndpointTypeVoicemail;
    });
    return _voicemail;
}
+ (MSGraphEndpointType*) skypeForBusiness {
    static MSGraphEndpointType *_skypeForBusiness;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusiness = [[MSGraphEndpointType alloc] init];
        _skypeForBusiness.enumValue = MSGraphEndpointTypeSkypeForBusiness;
    });
    return _skypeForBusiness;
}
+ (MSGraphEndpointType*) skypeForBusinessVoipPhone {
    static MSGraphEndpointType *_skypeForBusinessVoipPhone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _skypeForBusinessVoipPhone = [[MSGraphEndpointType alloc] init];
        _skypeForBusinessVoipPhone.enumValue = MSGraphEndpointTypeSkypeForBusinessVoipPhone;
    });
    return _skypeForBusinessVoipPhone;
}
+ (MSGraphEndpointType*) unknownFutureValue {
    static MSGraphEndpointType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEndpointType alloc] init];
        _unknownFutureValue.enumValue = MSGraphEndpointTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEndpointType*) UnknownEnumValue {
    static MSGraphEndpointType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEndpointType alloc] init];
        _unknownValue.enumValue = MSGraphEndpointTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEndpointType*) endpointTypeWithEnumValue:(MSGraphEndpointTypeValue)val {

    switch(val)
    {
        case MSGraphEndpointTypeDefault:
            return [MSGraphEndpointType default];
        case MSGraphEndpointTypeVoicemail:
            return [MSGraphEndpointType voicemail];
        case MSGraphEndpointTypeSkypeForBusiness:
            return [MSGraphEndpointType skypeForBusiness];
        case MSGraphEndpointTypeSkypeForBusinessVoipPhone:
            return [MSGraphEndpointType skypeForBusinessVoipPhone];
        case MSGraphEndpointTypeUnknownFutureValue:
            return [MSGraphEndpointType unknownFutureValue];
        case MSGraphEndpointTypeEndOfEnum:
        default:
            return [MSGraphEndpointType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEndpointTypeDefault:
            return @"default";
        case MSGraphEndpointTypeVoicemail:
            return @"voicemail";
        case MSGraphEndpointTypeSkypeForBusiness:
            return @"skypeForBusiness";
        case MSGraphEndpointTypeSkypeForBusinessVoipPhone:
            return @"skypeForBusinessVoipPhone";
        case MSGraphEndpointTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEndpointTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEndpointTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEndpointType)

- (MSGraphEndpointType*) toMSGraphEndpointType{

    if([self isEqualToString:@"default"])
    {
          return [MSGraphEndpointType default];
    }
    else if([self isEqualToString:@"voicemail"])
    {
          return [MSGraphEndpointType voicemail];
    }
    else if([self isEqualToString:@"skypeForBusiness"])
    {
          return [MSGraphEndpointType skypeForBusiness];
    }
    else if([self isEqualToString:@"skypeForBusinessVoipPhone"])
    {
          return [MSGraphEndpointType skypeForBusinessVoipPhone];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEndpointType unknownFutureValue];
    }
    else {
        return [MSGraphEndpointType UnknownEnumValue];
    }
}

@end
