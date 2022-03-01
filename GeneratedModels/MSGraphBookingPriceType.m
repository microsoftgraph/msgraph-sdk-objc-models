// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBookingPriceType.h"

@interface MSGraphBookingPriceType () {
    MSGraphBookingPriceTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphBookingPriceTypeValue enumValue;
@end

@implementation MSGraphBookingPriceType

+ (MSGraphBookingPriceType*) undefined {
    static MSGraphBookingPriceType *_undefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _undefined = [[MSGraphBookingPriceType alloc] init];
        _undefined.enumValue = MSGraphBookingPriceTypeUndefined;
    });
    return _undefined;
}
+ (MSGraphBookingPriceType*) fixedPrice {
    static MSGraphBookingPriceType *_fixedPrice;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fixedPrice = [[MSGraphBookingPriceType alloc] init];
        _fixedPrice.enumValue = MSGraphBookingPriceTypeFixedPrice;
    });
    return _fixedPrice;
}
+ (MSGraphBookingPriceType*) startingAt {
    static MSGraphBookingPriceType *_startingAt;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _startingAt = [[MSGraphBookingPriceType alloc] init];
        _startingAt.enumValue = MSGraphBookingPriceTypeStartingAt;
    });
    return _startingAt;
}
+ (MSGraphBookingPriceType*) hourly {
    static MSGraphBookingPriceType *_hourly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hourly = [[MSGraphBookingPriceType alloc] init];
        _hourly.enumValue = MSGraphBookingPriceTypeHourly;
    });
    return _hourly;
}
+ (MSGraphBookingPriceType*) free {
    static MSGraphBookingPriceType *_free;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _free = [[MSGraphBookingPriceType alloc] init];
        _free.enumValue = MSGraphBookingPriceTypeFree;
    });
    return _free;
}
+ (MSGraphBookingPriceType*) priceVaries {
    static MSGraphBookingPriceType *_priceVaries;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _priceVaries = [[MSGraphBookingPriceType alloc] init];
        _priceVaries.enumValue = MSGraphBookingPriceTypePriceVaries;
    });
    return _priceVaries;
}
+ (MSGraphBookingPriceType*) callUs {
    static MSGraphBookingPriceType *_callUs;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _callUs = [[MSGraphBookingPriceType alloc] init];
        _callUs.enumValue = MSGraphBookingPriceTypeCallUs;
    });
    return _callUs;
}
+ (MSGraphBookingPriceType*) notSet {
    static MSGraphBookingPriceType *_notSet;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notSet = [[MSGraphBookingPriceType alloc] init];
        _notSet.enumValue = MSGraphBookingPriceTypeNotSet;
    });
    return _notSet;
}
+ (MSGraphBookingPriceType*) unknownFutureValue {
    static MSGraphBookingPriceType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphBookingPriceType alloc] init];
        _unknownFutureValue.enumValue = MSGraphBookingPriceTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphBookingPriceType*) UnknownEnumValue {
    static MSGraphBookingPriceType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphBookingPriceType alloc] init];
        _unknownValue.enumValue = MSGraphBookingPriceTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphBookingPriceType*) bookingPriceTypeWithEnumValue:(MSGraphBookingPriceTypeValue)val {

    switch(val)
    {
        case MSGraphBookingPriceTypeUndefined:
            return [MSGraphBookingPriceType undefined];
        case MSGraphBookingPriceTypeFixedPrice:
            return [MSGraphBookingPriceType fixedPrice];
        case MSGraphBookingPriceTypeStartingAt:
            return [MSGraphBookingPriceType startingAt];
        case MSGraphBookingPriceTypeHourly:
            return [MSGraphBookingPriceType hourly];
        case MSGraphBookingPriceTypeFree:
            return [MSGraphBookingPriceType free];
        case MSGraphBookingPriceTypePriceVaries:
            return [MSGraphBookingPriceType priceVaries];
        case MSGraphBookingPriceTypeCallUs:
            return [MSGraphBookingPriceType callUs];
        case MSGraphBookingPriceTypeNotSet:
            return [MSGraphBookingPriceType notSet];
        case MSGraphBookingPriceTypeUnknownFutureValue:
            return [MSGraphBookingPriceType unknownFutureValue];
        case MSGraphBookingPriceTypeEndOfEnum:
        default:
            return [MSGraphBookingPriceType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphBookingPriceTypeUndefined:
            return @"undefined";
        case MSGraphBookingPriceTypeFixedPrice:
            return @"fixedPrice";
        case MSGraphBookingPriceTypeStartingAt:
            return @"startingAt";
        case MSGraphBookingPriceTypeHourly:
            return @"hourly";
        case MSGraphBookingPriceTypeFree:
            return @"free";
        case MSGraphBookingPriceTypePriceVaries:
            return @"priceVaries";
        case MSGraphBookingPriceTypeCallUs:
            return @"callUs";
        case MSGraphBookingPriceTypeNotSet:
            return @"notSet";
        case MSGraphBookingPriceTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphBookingPriceTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphBookingPriceTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphBookingPriceType)

- (MSGraphBookingPriceType*) toMSGraphBookingPriceType{

    if([self isEqualToString:@"undefined"])
    {
          return [MSGraphBookingPriceType undefined];
    }
    else if([self isEqualToString:@"fixedPrice"])
    {
          return [MSGraphBookingPriceType fixedPrice];
    }
    else if([self isEqualToString:@"startingAt"])
    {
          return [MSGraphBookingPriceType startingAt];
    }
    else if([self isEqualToString:@"hourly"])
    {
          return [MSGraphBookingPriceType hourly];
    }
    else if([self isEqualToString:@"free"])
    {
          return [MSGraphBookingPriceType free];
    }
    else if([self isEqualToString:@"priceVaries"])
    {
          return [MSGraphBookingPriceType priceVaries];
    }
    else if([self isEqualToString:@"callUs"])
    {
          return [MSGraphBookingPriceType callUs];
    }
    else if([self isEqualToString:@"notSet"])
    {
          return [MSGraphBookingPriceType notSet];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphBookingPriceType unknownFutureValue];
    }
    else {
        return [MSGraphBookingPriceType UnknownEnumValue];
    }
}

@end
