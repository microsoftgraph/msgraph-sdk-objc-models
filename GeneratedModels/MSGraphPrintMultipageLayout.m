// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintMultipageLayout.h"

@interface MSGraphPrintMultipageLayout () {
    MSGraphPrintMultipageLayoutValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintMultipageLayoutValue enumValue;
@end

@implementation MSGraphPrintMultipageLayout

+ (MSGraphPrintMultipageLayout*) clockwiseFromTopLeft {
    static MSGraphPrintMultipageLayout *_clockwiseFromTopLeft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _clockwiseFromTopLeft = [[MSGraphPrintMultipageLayout alloc] init];
        _clockwiseFromTopLeft.enumValue = MSGraphPrintMultipageLayoutClockwiseFromTopLeft;
    });
    return _clockwiseFromTopLeft;
}
+ (MSGraphPrintMultipageLayout*) counterclockwiseFromTopLeft {
    static MSGraphPrintMultipageLayout *_counterclockwiseFromTopLeft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _counterclockwiseFromTopLeft = [[MSGraphPrintMultipageLayout alloc] init];
        _counterclockwiseFromTopLeft.enumValue = MSGraphPrintMultipageLayoutCounterclockwiseFromTopLeft;
    });
    return _counterclockwiseFromTopLeft;
}
+ (MSGraphPrintMultipageLayout*) counterclockwiseFromTopRight {
    static MSGraphPrintMultipageLayout *_counterclockwiseFromTopRight;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _counterclockwiseFromTopRight = [[MSGraphPrintMultipageLayout alloc] init];
        _counterclockwiseFromTopRight.enumValue = MSGraphPrintMultipageLayoutCounterclockwiseFromTopRight;
    });
    return _counterclockwiseFromTopRight;
}
+ (MSGraphPrintMultipageLayout*) clockwiseFromTopRight {
    static MSGraphPrintMultipageLayout *_clockwiseFromTopRight;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _clockwiseFromTopRight = [[MSGraphPrintMultipageLayout alloc] init];
        _clockwiseFromTopRight.enumValue = MSGraphPrintMultipageLayoutClockwiseFromTopRight;
    });
    return _clockwiseFromTopRight;
}
+ (MSGraphPrintMultipageLayout*) counterclockwiseFromBottomLeft {
    static MSGraphPrintMultipageLayout *_counterclockwiseFromBottomLeft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _counterclockwiseFromBottomLeft = [[MSGraphPrintMultipageLayout alloc] init];
        _counterclockwiseFromBottomLeft.enumValue = MSGraphPrintMultipageLayoutCounterclockwiseFromBottomLeft;
    });
    return _counterclockwiseFromBottomLeft;
}
+ (MSGraphPrintMultipageLayout*) clockwiseFromBottomLeft {
    static MSGraphPrintMultipageLayout *_clockwiseFromBottomLeft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _clockwiseFromBottomLeft = [[MSGraphPrintMultipageLayout alloc] init];
        _clockwiseFromBottomLeft.enumValue = MSGraphPrintMultipageLayoutClockwiseFromBottomLeft;
    });
    return _clockwiseFromBottomLeft;
}
+ (MSGraphPrintMultipageLayout*) counterclockwiseFromBottomRight {
    static MSGraphPrintMultipageLayout *_counterclockwiseFromBottomRight;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _counterclockwiseFromBottomRight = [[MSGraphPrintMultipageLayout alloc] init];
        _counterclockwiseFromBottomRight.enumValue = MSGraphPrintMultipageLayoutCounterclockwiseFromBottomRight;
    });
    return _counterclockwiseFromBottomRight;
}
+ (MSGraphPrintMultipageLayout*) clockwiseFromBottomRight {
    static MSGraphPrintMultipageLayout *_clockwiseFromBottomRight;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _clockwiseFromBottomRight = [[MSGraphPrintMultipageLayout alloc] init];
        _clockwiseFromBottomRight.enumValue = MSGraphPrintMultipageLayoutClockwiseFromBottomRight;
    });
    return _clockwiseFromBottomRight;
}
+ (MSGraphPrintMultipageLayout*) unknownFutureValue {
    static MSGraphPrintMultipageLayout *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintMultipageLayout alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintMultipageLayoutUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintMultipageLayout*) UnknownEnumValue {
    static MSGraphPrintMultipageLayout *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintMultipageLayout alloc] init];
        _unknownValue.enumValue = MSGraphPrintMultipageLayoutEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintMultipageLayout*) printMultipageLayoutWithEnumValue:(MSGraphPrintMultipageLayoutValue)val {

    switch(val)
    {
        case MSGraphPrintMultipageLayoutClockwiseFromTopLeft:
            return [MSGraphPrintMultipageLayout clockwiseFromTopLeft];
        case MSGraphPrintMultipageLayoutCounterclockwiseFromTopLeft:
            return [MSGraphPrintMultipageLayout counterclockwiseFromTopLeft];
        case MSGraphPrintMultipageLayoutCounterclockwiseFromTopRight:
            return [MSGraphPrintMultipageLayout counterclockwiseFromTopRight];
        case MSGraphPrintMultipageLayoutClockwiseFromTopRight:
            return [MSGraphPrintMultipageLayout clockwiseFromTopRight];
        case MSGraphPrintMultipageLayoutCounterclockwiseFromBottomLeft:
            return [MSGraphPrintMultipageLayout counterclockwiseFromBottomLeft];
        case MSGraphPrintMultipageLayoutClockwiseFromBottomLeft:
            return [MSGraphPrintMultipageLayout clockwiseFromBottomLeft];
        case MSGraphPrintMultipageLayoutCounterclockwiseFromBottomRight:
            return [MSGraphPrintMultipageLayout counterclockwiseFromBottomRight];
        case MSGraphPrintMultipageLayoutClockwiseFromBottomRight:
            return [MSGraphPrintMultipageLayout clockwiseFromBottomRight];
        case MSGraphPrintMultipageLayoutUnknownFutureValue:
            return [MSGraphPrintMultipageLayout unknownFutureValue];
        case MSGraphPrintMultipageLayoutEndOfEnum:
        default:
            return [MSGraphPrintMultipageLayout UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintMultipageLayoutClockwiseFromTopLeft:
            return @"clockwiseFromTopLeft";
        case MSGraphPrintMultipageLayoutCounterclockwiseFromTopLeft:
            return @"counterclockwiseFromTopLeft";
        case MSGraphPrintMultipageLayoutCounterclockwiseFromTopRight:
            return @"counterclockwiseFromTopRight";
        case MSGraphPrintMultipageLayoutClockwiseFromTopRight:
            return @"clockwiseFromTopRight";
        case MSGraphPrintMultipageLayoutCounterclockwiseFromBottomLeft:
            return @"counterclockwiseFromBottomLeft";
        case MSGraphPrintMultipageLayoutClockwiseFromBottomLeft:
            return @"clockwiseFromBottomLeft";
        case MSGraphPrintMultipageLayoutCounterclockwiseFromBottomRight:
            return @"counterclockwiseFromBottomRight";
        case MSGraphPrintMultipageLayoutClockwiseFromBottomRight:
            return @"clockwiseFromBottomRight";
        case MSGraphPrintMultipageLayoutUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintMultipageLayoutEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintMultipageLayoutValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintMultipageLayout)

- (MSGraphPrintMultipageLayout*) toMSGraphPrintMultipageLayout{

    if([self isEqualToString:@"clockwiseFromTopLeft"])
    {
          return [MSGraphPrintMultipageLayout clockwiseFromTopLeft];
    }
    else if([self isEqualToString:@"counterclockwiseFromTopLeft"])
    {
          return [MSGraphPrintMultipageLayout counterclockwiseFromTopLeft];
    }
    else if([self isEqualToString:@"counterclockwiseFromTopRight"])
    {
          return [MSGraphPrintMultipageLayout counterclockwiseFromTopRight];
    }
    else if([self isEqualToString:@"clockwiseFromTopRight"])
    {
          return [MSGraphPrintMultipageLayout clockwiseFromTopRight];
    }
    else if([self isEqualToString:@"counterclockwiseFromBottomLeft"])
    {
          return [MSGraphPrintMultipageLayout counterclockwiseFromBottomLeft];
    }
    else if([self isEqualToString:@"clockwiseFromBottomLeft"])
    {
          return [MSGraphPrintMultipageLayout clockwiseFromBottomLeft];
    }
    else if([self isEqualToString:@"counterclockwiseFromBottomRight"])
    {
          return [MSGraphPrintMultipageLayout counterclockwiseFromBottomRight];
    }
    else if([self isEqualToString:@"clockwiseFromBottomRight"])
    {
          return [MSGraphPrintMultipageLayout clockwiseFromBottomRight];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintMultipageLayout unknownFutureValue];
    }
    else {
        return [MSGraphPrintMultipageLayout UnknownEnumValue];
    }
}

@end
