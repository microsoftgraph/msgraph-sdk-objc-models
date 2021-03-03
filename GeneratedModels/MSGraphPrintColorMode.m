// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintColorMode.h"

@interface MSGraphPrintColorMode () {
    MSGraphPrintColorModeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintColorModeValue enumValue;
@end

@implementation MSGraphPrintColorMode

+ (MSGraphPrintColorMode*) blackAndWhite {
    static MSGraphPrintColorMode *_blackAndWhite;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blackAndWhite = [[MSGraphPrintColorMode alloc] init];
        _blackAndWhite.enumValue = MSGraphPrintColorModeBlackAndWhite;
    });
    return _blackAndWhite;
}
+ (MSGraphPrintColorMode*) grayscale {
    static MSGraphPrintColorMode *_grayscale;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _grayscale = [[MSGraphPrintColorMode alloc] init];
        _grayscale.enumValue = MSGraphPrintColorModeGrayscale;
    });
    return _grayscale;
}
+ (MSGraphPrintColorMode*) color {
    static MSGraphPrintColorMode *_color;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _color = [[MSGraphPrintColorMode alloc] init];
        _color.enumValue = MSGraphPrintColorModeColor;
    });
    return _color;
}
+ (MSGraphPrintColorMode*) auto {
    static MSGraphPrintColorMode *_auto;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _auto = [[MSGraphPrintColorMode alloc] init];
        _auto.enumValue = MSGraphPrintColorModeAuto;
    });
    return _auto;
}
+ (MSGraphPrintColorMode*) unknownFutureValue {
    static MSGraphPrintColorMode *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintColorMode alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintColorModeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintColorMode*) UnknownEnumValue {
    static MSGraphPrintColorMode *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintColorMode alloc] init];
        _unknownValue.enumValue = MSGraphPrintColorModeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintColorMode*) printColorModeWithEnumValue:(MSGraphPrintColorModeValue)val {

    switch(val)
    {
        case MSGraphPrintColorModeBlackAndWhite:
            return [MSGraphPrintColorMode blackAndWhite];
        case MSGraphPrintColorModeGrayscale:
            return [MSGraphPrintColorMode grayscale];
        case MSGraphPrintColorModeColor:
            return [MSGraphPrintColorMode color];
        case MSGraphPrintColorModeAuto:
            return [MSGraphPrintColorMode auto];
        case MSGraphPrintColorModeUnknownFutureValue:
            return [MSGraphPrintColorMode unknownFutureValue];
        case MSGraphPrintColorModeEndOfEnum:
        default:
            return [MSGraphPrintColorMode UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintColorModeBlackAndWhite:
            return @"blackAndWhite";
        case MSGraphPrintColorModeGrayscale:
            return @"grayscale";
        case MSGraphPrintColorModeColor:
            return @"color";
        case MSGraphPrintColorModeAuto:
            return @"auto";
        case MSGraphPrintColorModeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintColorModeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintColorModeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintColorMode)

- (MSGraphPrintColorMode*) toMSGraphPrintColorMode{

    if([self isEqualToString:@"blackAndWhite"])
    {
          return [MSGraphPrintColorMode blackAndWhite];
    }
    else if([self isEqualToString:@"grayscale"])
    {
          return [MSGraphPrintColorMode grayscale];
    }
    else if([self isEqualToString:@"color"])
    {
          return [MSGraphPrintColorMode color];
    }
    else if([self isEqualToString:@"auto"])
    {
          return [MSGraphPrintColorMode auto];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintColorMode unknownFutureValue];
    }
    else {
        return [MSGraphPrintColorMode UnknownEnumValue];
    }
}

@end
