// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrinterFeedOrientation.h"

@interface MSGraphPrinterFeedOrientation () {
    MSGraphPrinterFeedOrientationValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrinterFeedOrientationValue enumValue;
@end

@implementation MSGraphPrinterFeedOrientation

+ (MSGraphPrinterFeedOrientation*) longEdgeFirst {
    static MSGraphPrinterFeedOrientation *_longEdgeFirst;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _longEdgeFirst = [[MSGraphPrinterFeedOrientation alloc] init];
        _longEdgeFirst.enumValue = MSGraphPrinterFeedOrientationLongEdgeFirst;
    });
    return _longEdgeFirst;
}
+ (MSGraphPrinterFeedOrientation*) shortEdgeFirst {
    static MSGraphPrinterFeedOrientation *_shortEdgeFirst;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shortEdgeFirst = [[MSGraphPrinterFeedOrientation alloc] init];
        _shortEdgeFirst.enumValue = MSGraphPrinterFeedOrientationShortEdgeFirst;
    });
    return _shortEdgeFirst;
}
+ (MSGraphPrinterFeedOrientation*) unknownFutureValue {
    static MSGraphPrinterFeedOrientation *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrinterFeedOrientation alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrinterFeedOrientationUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrinterFeedOrientation*) UnknownEnumValue {
    static MSGraphPrinterFeedOrientation *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrinterFeedOrientation alloc] init];
        _unknownValue.enumValue = MSGraphPrinterFeedOrientationEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrinterFeedOrientation*) printerFeedOrientationWithEnumValue:(MSGraphPrinterFeedOrientationValue)val {

    switch(val)
    {
        case MSGraphPrinterFeedOrientationLongEdgeFirst:
            return [MSGraphPrinterFeedOrientation longEdgeFirst];
        case MSGraphPrinterFeedOrientationShortEdgeFirst:
            return [MSGraphPrinterFeedOrientation shortEdgeFirst];
        case MSGraphPrinterFeedOrientationUnknownFutureValue:
            return [MSGraphPrinterFeedOrientation unknownFutureValue];
        case MSGraphPrinterFeedOrientationEndOfEnum:
        default:
            return [MSGraphPrinterFeedOrientation UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrinterFeedOrientationLongEdgeFirst:
            return @"longEdgeFirst";
        case MSGraphPrinterFeedOrientationShortEdgeFirst:
            return @"shortEdgeFirst";
        case MSGraphPrinterFeedOrientationUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrinterFeedOrientationEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrinterFeedOrientationValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrinterFeedOrientation)

- (MSGraphPrinterFeedOrientation*) toMSGraphPrinterFeedOrientation{

    if([self isEqualToString:@"longEdgeFirst"])
    {
          return [MSGraphPrinterFeedOrientation longEdgeFirst];
    }
    else if([self isEqualToString:@"shortEdgeFirst"])
    {
          return [MSGraphPrinterFeedOrientation shortEdgeFirst];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrinterFeedOrientation unknownFutureValue];
    }
    else {
        return [MSGraphPrinterFeedOrientation UnknownEnumValue];
    }
}

@end
