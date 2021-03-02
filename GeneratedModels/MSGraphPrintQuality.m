// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintQuality.h"

@interface MSGraphPrintQuality () {
    MSGraphPrintQualityValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintQualityValue enumValue;
@end

@implementation MSGraphPrintQuality

+ (MSGraphPrintQuality*) low {
    static MSGraphPrintQuality *_low;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _low = [[MSGraphPrintQuality alloc] init];
        _low.enumValue = MSGraphPrintQualityLow;
    });
    return _low;
}
+ (MSGraphPrintQuality*) medium {
    static MSGraphPrintQuality *_medium;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _medium = [[MSGraphPrintQuality alloc] init];
        _medium.enumValue = MSGraphPrintQualityMedium;
    });
    return _medium;
}
+ (MSGraphPrintQuality*) high {
    static MSGraphPrintQuality *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphPrintQuality alloc] init];
        _high.enumValue = MSGraphPrintQualityHigh;
    });
    return _high;
}
+ (MSGraphPrintQuality*) unknownFutureValue {
    static MSGraphPrintQuality *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintQuality alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintQualityUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintQuality*) UnknownEnumValue {
    static MSGraphPrintQuality *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintQuality alloc] init];
        _unknownValue.enumValue = MSGraphPrintQualityEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintQuality*) printQualityWithEnumValue:(MSGraphPrintQualityValue)val {

    switch(val)
    {
        case MSGraphPrintQualityLow:
            return [MSGraphPrintQuality low];
        case MSGraphPrintQualityMedium:
            return [MSGraphPrintQuality medium];
        case MSGraphPrintQualityHigh:
            return [MSGraphPrintQuality high];
        case MSGraphPrintQualityUnknownFutureValue:
            return [MSGraphPrintQuality unknownFutureValue];
        case MSGraphPrintQualityEndOfEnum:
        default:
            return [MSGraphPrintQuality UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintQualityLow:
            return @"low";
        case MSGraphPrintQualityMedium:
            return @"medium";
        case MSGraphPrintQualityHigh:
            return @"high";
        case MSGraphPrintQualityUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintQualityEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintQualityValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintQuality)

- (MSGraphPrintQuality*) toMSGraphPrintQuality{

    if([self isEqualToString:@"low"])
    {
          return [MSGraphPrintQuality low];
    }
    else if([self isEqualToString:@"medium"])
    {
          return [MSGraphPrintQuality medium];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphPrintQuality high];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintQuality unknownFutureValue];
    }
    else {
        return [MSGraphPrintQuality UnknownEnumValue];
    }
}

@end
