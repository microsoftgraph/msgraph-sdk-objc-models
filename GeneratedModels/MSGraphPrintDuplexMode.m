// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPrintDuplexMode.h"

@interface MSGraphPrintDuplexMode () {
    MSGraphPrintDuplexModeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPrintDuplexModeValue enumValue;
@end

@implementation MSGraphPrintDuplexMode

+ (MSGraphPrintDuplexMode*) flipOnLongEdge {
    static MSGraphPrintDuplexMode *_flipOnLongEdge;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _flipOnLongEdge = [[MSGraphPrintDuplexMode alloc] init];
        _flipOnLongEdge.enumValue = MSGraphPrintDuplexModeFlipOnLongEdge;
    });
    return _flipOnLongEdge;
}
+ (MSGraphPrintDuplexMode*) flipOnShortEdge {
    static MSGraphPrintDuplexMode *_flipOnShortEdge;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _flipOnShortEdge = [[MSGraphPrintDuplexMode alloc] init];
        _flipOnShortEdge.enumValue = MSGraphPrintDuplexModeFlipOnShortEdge;
    });
    return _flipOnShortEdge;
}
+ (MSGraphPrintDuplexMode*) oneSided {
    static MSGraphPrintDuplexMode *_oneSided;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneSided = [[MSGraphPrintDuplexMode alloc] init];
        _oneSided.enumValue = MSGraphPrintDuplexModeOneSided;
    });
    return _oneSided;
}
+ (MSGraphPrintDuplexMode*) unknownFutureValue {
    static MSGraphPrintDuplexMode *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPrintDuplexMode alloc] init];
        _unknownFutureValue.enumValue = MSGraphPrintDuplexModeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPrintDuplexMode*) UnknownEnumValue {
    static MSGraphPrintDuplexMode *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPrintDuplexMode alloc] init];
        _unknownValue.enumValue = MSGraphPrintDuplexModeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPrintDuplexMode*) printDuplexModeWithEnumValue:(MSGraphPrintDuplexModeValue)val {

    switch(val)
    {
        case MSGraphPrintDuplexModeFlipOnLongEdge:
            return [MSGraphPrintDuplexMode flipOnLongEdge];
        case MSGraphPrintDuplexModeFlipOnShortEdge:
            return [MSGraphPrintDuplexMode flipOnShortEdge];
        case MSGraphPrintDuplexModeOneSided:
            return [MSGraphPrintDuplexMode oneSided];
        case MSGraphPrintDuplexModeUnknownFutureValue:
            return [MSGraphPrintDuplexMode unknownFutureValue];
        case MSGraphPrintDuplexModeEndOfEnum:
        default:
            return [MSGraphPrintDuplexMode UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPrintDuplexModeFlipOnLongEdge:
            return @"flipOnLongEdge";
        case MSGraphPrintDuplexModeFlipOnShortEdge:
            return @"flipOnShortEdge";
        case MSGraphPrintDuplexModeOneSided:
            return @"oneSided";
        case MSGraphPrintDuplexModeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPrintDuplexModeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPrintDuplexModeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPrintDuplexMode)

- (MSGraphPrintDuplexMode*) toMSGraphPrintDuplexMode{

    if([self isEqualToString:@"flipOnLongEdge"])
    {
          return [MSGraphPrintDuplexMode flipOnLongEdge];
    }
    else if([self isEqualToString:@"flipOnShortEdge"])
    {
          return [MSGraphPrintDuplexMode flipOnShortEdge];
    }
    else if([self isEqualToString:@"oneSided"])
    {
          return [MSGraphPrintDuplexMode oneSided];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPrintDuplexMode unknownFutureValue];
    }
    else {
        return [MSGraphPrintDuplexMode UnknownEnumValue];
    }
}

@end
