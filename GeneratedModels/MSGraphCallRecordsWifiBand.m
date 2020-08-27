// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsWifiBand.h"

@interface MSGraphCallRecordsWifiBand () {
    MSGraphCallRecordsWifiBandValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsWifiBandValue enumValue;
@end

@implementation MSGraphCallRecordsWifiBand

+ (MSGraphCallRecordsWifiBand*) unknown {
    static MSGraphCallRecordsWifiBand *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphCallRecordsWifiBand alloc] init];
        _unknown.enumValue = MSGraphCallRecordsWifiBandUnknown;
    });
    return _unknown;
}
+ (MSGraphCallRecordsWifiBand*) frequency24GHz {
    static MSGraphCallRecordsWifiBand *_frequency24GHz;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _frequency24GHz = [[MSGraphCallRecordsWifiBand alloc] init];
        _frequency24GHz.enumValue = MSGraphCallRecordsWifiBandFrequency24GHz;
    });
    return _frequency24GHz;
}
+ (MSGraphCallRecordsWifiBand*) frequency50GHz {
    static MSGraphCallRecordsWifiBand *_frequency50GHz;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _frequency50GHz = [[MSGraphCallRecordsWifiBand alloc] init];
        _frequency50GHz.enumValue = MSGraphCallRecordsWifiBandFrequency50GHz;
    });
    return _frequency50GHz;
}
+ (MSGraphCallRecordsWifiBand*) frequency60GHz {
    static MSGraphCallRecordsWifiBand *_frequency60GHz;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _frequency60GHz = [[MSGraphCallRecordsWifiBand alloc] init];
        _frequency60GHz.enumValue = MSGraphCallRecordsWifiBandFrequency60GHz;
    });
    return _frequency60GHz;
}
+ (MSGraphCallRecordsWifiBand*) unknownFutureValue {
    static MSGraphCallRecordsWifiBand *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordsWifiBand alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordsWifiBandUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordsWifiBand*) UnknownEnumValue {
    static MSGraphCallRecordsWifiBand *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsWifiBand alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsWifiBandEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsWifiBand*) wifiBandWithEnumValue:(MSGraphCallRecordsWifiBandValue)val {

    switch(val)
    {
        case MSGraphCallRecordsWifiBandUnknown:
            return [MSGraphCallRecordsWifiBand unknown];
        case MSGraphCallRecordsWifiBandFrequency24GHz:
            return [MSGraphCallRecordsWifiBand frequency24GHz];
        case MSGraphCallRecordsWifiBandFrequency50GHz:
            return [MSGraphCallRecordsWifiBand frequency50GHz];
        case MSGraphCallRecordsWifiBandFrequency60GHz:
            return [MSGraphCallRecordsWifiBand frequency60GHz];
        case MSGraphCallRecordsWifiBandUnknownFutureValue:
            return [MSGraphCallRecordsWifiBand unknownFutureValue];
        case MSGraphCallRecordsWifiBandEndOfEnum:
        default:
            return [MSGraphCallRecordsWifiBand UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsWifiBandUnknown:
            return @"unknown";
        case MSGraphCallRecordsWifiBandFrequency24GHz:
            return @"frequency24GHz";
        case MSGraphCallRecordsWifiBandFrequency50GHz:
            return @"frequency50GHz";
        case MSGraphCallRecordsWifiBandFrequency60GHz:
            return @"frequency60GHz";
        case MSGraphCallRecordsWifiBandUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordsWifiBandEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsWifiBandValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsWifiBand)

- (MSGraphCallRecordsWifiBand*) toMSGraphCallRecordsWifiBand{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphCallRecordsWifiBand unknown];
    }
    else if([self isEqualToString:@"frequency24GHz"])
    {
          return [MSGraphCallRecordsWifiBand frequency24GHz];
    }
    else if([self isEqualToString:@"frequency50GHz"])
    {
          return [MSGraphCallRecordsWifiBand frequency50GHz];
    }
    else if([self isEqualToString:@"frequency60GHz"])
    {
          return [MSGraphCallRecordsWifiBand frequency60GHz];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordsWifiBand unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordsWifiBand UnknownEnumValue];
    }
}

@end
