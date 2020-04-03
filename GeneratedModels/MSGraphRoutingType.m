// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRoutingType.h"

@interface MSGraphRoutingType () {
    MSGraphRoutingTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRoutingTypeValue enumValue;
@end

@implementation MSGraphRoutingType

+ (MSGraphRoutingType*) forwarded {
    static MSGraphRoutingType *_forwarded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _forwarded = [[MSGraphRoutingType alloc] init];
        _forwarded.enumValue = MSGraphRoutingTypeForwarded;
    });
    return _forwarded;
}
+ (MSGraphRoutingType*) lookup {
    static MSGraphRoutingType *_lookup;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lookup = [[MSGraphRoutingType alloc] init];
        _lookup.enumValue = MSGraphRoutingTypeLookup;
    });
    return _lookup;
}
+ (MSGraphRoutingType*) selfFork {
    static MSGraphRoutingType *_selfFork;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _selfFork = [[MSGraphRoutingType alloc] init];
        _selfFork.enumValue = MSGraphRoutingTypeSelfFork;
    });
    return _selfFork;
}
+ (MSGraphRoutingType*) unknownFutureValue {
    static MSGraphRoutingType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRoutingType alloc] init];
        _unknownFutureValue.enumValue = MSGraphRoutingTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRoutingType*) UnknownEnumValue {
    static MSGraphRoutingType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRoutingType alloc] init];
        _unknownValue.enumValue = MSGraphRoutingTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRoutingType*) routingTypeWithEnumValue:(MSGraphRoutingTypeValue)val {

    switch(val)
    {
        case MSGraphRoutingTypeForwarded:
            return [MSGraphRoutingType forwarded];
        case MSGraphRoutingTypeLookup:
            return [MSGraphRoutingType lookup];
        case MSGraphRoutingTypeSelfFork:
            return [MSGraphRoutingType selfFork];
        case MSGraphRoutingTypeUnknownFutureValue:
            return [MSGraphRoutingType unknownFutureValue];
        case MSGraphRoutingTypeEndOfEnum:
        default:
            return [MSGraphRoutingType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRoutingTypeForwarded:
            return @"forwarded";
        case MSGraphRoutingTypeLookup:
            return @"lookup";
        case MSGraphRoutingTypeSelfFork:
            return @"selfFork";
        case MSGraphRoutingTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRoutingTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRoutingTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRoutingType)

- (MSGraphRoutingType*) toMSGraphRoutingType{

    if([self isEqualToString:@"forwarded"])
    {
          return [MSGraphRoutingType forwarded];
    }
    else if([self isEqualToString:@"lookup"])
    {
          return [MSGraphRoutingType lookup];
    }
    else if([self isEqualToString:@"selfFork"])
    {
          return [MSGraphRoutingType selfFork];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRoutingType unknownFutureValue];
    }
    else {
        return [MSGraphRoutingType UnknownEnumValue];
    }
}

@end
