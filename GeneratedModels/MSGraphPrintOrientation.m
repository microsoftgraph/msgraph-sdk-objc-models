// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintOrientation.h"

@interface MSGraphPrintOrientation () {
    MSGraphPrintOrientationValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintOrientationValue enumValue;
@end

@implementation MSGraphPrintOrientation

+ (MSGraphPrintOrientation*) portrait {
    static MSGraphPrintOrientation *_portrait;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _portrait = [[MSGraphPrintOrientation alloc] init];
        _portrait.enumValue = MSGraphPrintOrientationPortrait;
    });
    return _portrait;
}
+ (MSGraphPrintOrientation*) landscape {
    static MSGraphPrintOrientation *_landscape;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _landscape = [[MSGraphPrintOrientation alloc] init];
        _landscape.enumValue = MSGraphPrintOrientationLandscape;
    });
    return _landscape;
}
+ (MSGraphPrintOrientation*) reverseLandscape {
    static MSGraphPrintOrientation *_reverseLandscape;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reverseLandscape = [[MSGraphPrintOrientation alloc] init];
        _reverseLandscape.enumValue = MSGraphPrintOrientationReverseLandscape;
    });
    return _reverseLandscape;
}
+ (MSGraphPrintOrientation*) reversePortrait {
    static MSGraphPrintOrientation *_reversePortrait;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reversePortrait = [[MSGraphPrintOrientation alloc] init];
        _reversePortrait.enumValue = MSGraphPrintOrientationReversePortrait;
    });
    return _reversePortrait;
}
+ (MSGraphPrintOrientation*) unknownFutureValue {
    static MSGraphPrintOrientation *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintOrientation alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintOrientationUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintOrientation*) UnknownEnumValue {
    static MSGraphPrintOrientation *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintOrientation alloc] init];
        _unknownValue.enumValue = MSGraphPrintOrientationEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintOrientation*) printOrientationWithEnumValue:(MSGraphPrintOrientationValue)val {

    switch(val)
    {
        case MSGraphPrintOrientationPortrait:
            return [MSGraphPrintOrientation portrait];
        case MSGraphPrintOrientationLandscape:
            return [MSGraphPrintOrientation landscape];
        case MSGraphPrintOrientationReverseLandscape:
            return [MSGraphPrintOrientation reverseLandscape];
        case MSGraphPrintOrientationReversePortrait:
            return [MSGraphPrintOrientation reversePortrait];
        case MSGraphPrintOrientationUnknownFutureValue:
            return [MSGraphPrintOrientation unknownFutureValue];
        case MSGraphPrintOrientationEndOfEnum:
        default:
            return [MSGraphPrintOrientation UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintOrientationPortrait:
            return @"portrait";
        case MSGraphPrintOrientationLandscape:
            return @"landscape";
        case MSGraphPrintOrientationReverseLandscape:
            return @"reverseLandscape";
        case MSGraphPrintOrientationReversePortrait:
            return @"reversePortrait";
        case MSGraphPrintOrientationUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintOrientationEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintOrientationValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintOrientation)

- (MSGraphPrintOrientation*) toMSGraphPrintOrientation{

    if([self isEqualToString:@"portrait"])
    {
          return [MSGraphPrintOrientation portrait];
    }
    else if([self isEqualToString:@"landscape"])
    {
          return [MSGraphPrintOrientation landscape];
    }
    else if([self isEqualToString:@"reverseLandscape"])
    {
          return [MSGraphPrintOrientation reverseLandscape];
    }
    else if([self isEqualToString:@"reversePortrait"])
    {
          return [MSGraphPrintOrientation reversePortrait];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintOrientation unknownFutureValue];
    }
    else {
        return [MSGraphPrintOrientation UnknownEnumValue];
    }
}

@end
