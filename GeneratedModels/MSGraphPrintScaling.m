// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintScaling.h"

@interface MSGraphPrintScaling () {
    MSGraphPrintScalingValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintScalingValue enumValue;
@end

@implementation MSGraphPrintScaling

+ (MSGraphPrintScaling*) auto {
    static MSGraphPrintScaling *_auto;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _auto = [[MSGraphPrintScaling alloc] init];
        _auto.enumValue = MSGraphPrintScalingAuto;
    });
    return _auto;
}
+ (MSGraphPrintScaling*) shrinkToFit {
    static MSGraphPrintScaling *_shrinkToFit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shrinkToFit = [[MSGraphPrintScaling alloc] init];
        _shrinkToFit.enumValue = MSGraphPrintScalingShrinkToFit;
    });
    return _shrinkToFit;
}
+ (MSGraphPrintScaling*) fill {
    static MSGraphPrintScaling *_fill;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fill = [[MSGraphPrintScaling alloc] init];
        _fill.enumValue = MSGraphPrintScalingFill;
    });
    return _fill;
}
+ (MSGraphPrintScaling*) fit {
    static MSGraphPrintScaling *_fit;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fit = [[MSGraphPrintScaling alloc] init];
        _fit.enumValue = MSGraphPrintScalingFit;
    });
    return _fit;
}
+ (MSGraphPrintScaling*) none {
    static MSGraphPrintScaling *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphPrintScaling alloc] init];
        _none.enumValue = MSGraphPrintScalingNone;
    });
    return _none;
}
+ (MSGraphPrintScaling*) unknownFutureValue {
    static MSGraphPrintScaling *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintScaling alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintScalingUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintScaling*) UnknownEnumValue {
    static MSGraphPrintScaling *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintScaling alloc] init];
        _unknownValue.enumValue = MSGraphPrintScalingEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintScaling*) printScalingWithEnumValue:(MSGraphPrintScalingValue)val {

    switch(val)
    {
        case MSGraphPrintScalingAuto:
            return [MSGraphPrintScaling auto];
        case MSGraphPrintScalingShrinkToFit:
            return [MSGraphPrintScaling shrinkToFit];
        case MSGraphPrintScalingFill:
            return [MSGraphPrintScaling fill];
        case MSGraphPrintScalingFit:
            return [MSGraphPrintScaling fit];
        case MSGraphPrintScalingNone:
            return [MSGraphPrintScaling none];
        case MSGraphPrintScalingUnknownFutureValue:
            return [MSGraphPrintScaling unknownFutureValue];
        case MSGraphPrintScalingEndOfEnum:
        default:
            return [MSGraphPrintScaling UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintScalingAuto:
            return @"auto";
        case MSGraphPrintScalingShrinkToFit:
            return @"shrinkToFit";
        case MSGraphPrintScalingFill:
            return @"fill";
        case MSGraphPrintScalingFit:
            return @"fit";
        case MSGraphPrintScalingNone:
            return @"none";
        case MSGraphPrintScalingUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintScalingEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintScalingValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintScaling)

- (MSGraphPrintScaling*) toMSGraphPrintScaling{

    if([self isEqualToString:@"auto"])
    {
          return [MSGraphPrintScaling auto];
    }
    else if([self isEqualToString:@"shrinkToFit"])
    {
          return [MSGraphPrintScaling shrinkToFit];
    }
    else if([self isEqualToString:@"fill"])
    {
          return [MSGraphPrintScaling fill];
    }
    else if([self isEqualToString:@"fit"])
    {
          return [MSGraphPrintScaling fit];
    }
    else if([self isEqualToString:@"none"])
    {
          return [MSGraphPrintScaling none];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintScaling unknownFutureValue];
    }
    else {
        return [MSGraphPrintScaling UnknownEnumValue];
    }
}

@end
