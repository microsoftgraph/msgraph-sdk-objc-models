// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRoutingMode.h"

@interface MSGraphRoutingMode () {
    MSGraphRoutingModeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRoutingModeValue enumValue;
@end

@implementation MSGraphRoutingMode

+ (MSGraphRoutingMode*) oneToOne {
    static MSGraphRoutingMode *_oneToOne;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _oneToOne = [[MSGraphRoutingMode alloc] init];
        _oneToOne.enumValue = MSGraphRoutingModeOneToOne;
    });
    return _oneToOne;
}
+ (MSGraphRoutingMode*) multicast {
    static MSGraphRoutingMode *_multicast;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _multicast = [[MSGraphRoutingMode alloc] init];
        _multicast.enumValue = MSGraphRoutingModeMulticast;
    });
    return _multicast;
}
+ (MSGraphRoutingMode*) unknownFutureValue {
    static MSGraphRoutingMode *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRoutingMode alloc] init];
        _unknownFutureValue.enumValue = MSGraphRoutingModeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRoutingMode*) UnknownEnumValue {
    static MSGraphRoutingMode *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRoutingMode alloc] init];
        _unknownValue.enumValue = MSGraphRoutingModeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRoutingMode*) routingModeWithEnumValue:(MSGraphRoutingModeValue)val {

    switch(val)
    {
        case MSGraphRoutingModeOneToOne:
            return [MSGraphRoutingMode oneToOne];
        case MSGraphRoutingModeMulticast:
            return [MSGraphRoutingMode multicast];
        case MSGraphRoutingModeUnknownFutureValue:
            return [MSGraphRoutingMode unknownFutureValue];
        case MSGraphRoutingModeEndOfEnum:
        default:
            return [MSGraphRoutingMode UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRoutingModeOneToOne:
            return @"oneToOne";
        case MSGraphRoutingModeMulticast:
            return @"multicast";
        case MSGraphRoutingModeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRoutingModeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRoutingModeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRoutingMode)

- (MSGraphRoutingMode*) toMSGraphRoutingMode{

    if([self isEqualToString:@"oneToOne"])
    {
          return [MSGraphRoutingMode oneToOne];
    }
    else if([self isEqualToString:@"multicast"])
    {
          return [MSGraphRoutingMode multicast];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRoutingMode unknownFutureValue];
    }
    else {
        return [MSGraphRoutingMode UnknownEnumValue];
    }
}

@end
