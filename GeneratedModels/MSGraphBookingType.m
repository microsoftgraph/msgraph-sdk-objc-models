// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBookingType.h"

@interface MSGraphBookingType () {
    MSGraphBookingTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphBookingTypeValue enumValue;
@end

@implementation MSGraphBookingType

+ (MSGraphBookingType*) unknown {
    static MSGraphBookingType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphBookingType alloc] init];
        _unknown.enumValue = MSGraphBookingTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphBookingType*) standard {
    static MSGraphBookingType *_standard;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _standard = [[MSGraphBookingType alloc] init];
        _standard.enumValue = MSGraphBookingTypeStandard;
    });
    return _standard;
}
+ (MSGraphBookingType*) reserved {
    static MSGraphBookingType *_reserved;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reserved = [[MSGraphBookingType alloc] init];
        _reserved.enumValue = MSGraphBookingTypeReserved;
    });
    return _reserved;
}

+ (MSGraphBookingType*) UnknownEnumValue {
    static MSGraphBookingType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphBookingType alloc] init];
        _unknownValue.enumValue = MSGraphBookingTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphBookingType*) bookingTypeWithEnumValue:(MSGraphBookingTypeValue)val {

    switch(val)
    {
        case MSGraphBookingTypeUnknown:
            return [MSGraphBookingType unknown];
        case MSGraphBookingTypeStandard:
            return [MSGraphBookingType standard];
        case MSGraphBookingTypeReserved:
            return [MSGraphBookingType reserved];
        case MSGraphBookingTypeEndOfEnum:
        default:
            return [MSGraphBookingType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphBookingTypeUnknown:
            return @"unknown";
        case MSGraphBookingTypeStandard:
            return @"standard";
        case MSGraphBookingTypeReserved:
            return @"reserved";
        case MSGraphBookingTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphBookingTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphBookingType)

- (MSGraphBookingType*) toMSGraphBookingType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphBookingType unknown];
    }
    else if([self isEqualToString:@"standard"])
    {
          return [MSGraphBookingType standard];
    }
    else if([self isEqualToString:@"reserved"])
    {
          return [MSGraphBookingType reserved];
    }
    else {
        return [MSGraphBookingType UnknownEnumValue];
    }
}

@end
