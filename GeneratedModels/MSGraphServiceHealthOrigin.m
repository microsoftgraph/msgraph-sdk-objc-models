// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphServiceHealthOrigin.h"

@interface MSGraphServiceHealthOrigin () {
    MSGraphServiceHealthOriginValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphServiceHealthOriginValue enumValue;
@end

@implementation MSGraphServiceHealthOrigin

+ (MSGraphServiceHealthOrigin*) microsoft {
    static MSGraphServiceHealthOrigin *_microsoft;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _microsoft = [[MSGraphServiceHealthOrigin alloc] init];
        _microsoft.enumValue = MSGraphServiceHealthOriginMicrosoft;
    });
    return _microsoft;
}
+ (MSGraphServiceHealthOrigin*) thirdParty {
    static MSGraphServiceHealthOrigin *_thirdParty;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _thirdParty = [[MSGraphServiceHealthOrigin alloc] init];
        _thirdParty.enumValue = MSGraphServiceHealthOriginThirdParty;
    });
    return _thirdParty;
}
+ (MSGraphServiceHealthOrigin*) customer {
    static MSGraphServiceHealthOrigin *_customer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _customer = [[MSGraphServiceHealthOrigin alloc] init];
        _customer.enumValue = MSGraphServiceHealthOriginCustomer;
    });
    return _customer;
}
+ (MSGraphServiceHealthOrigin*) unknownFutureValue {
    static MSGraphServiceHealthOrigin *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphServiceHealthOrigin alloc] init];
        _unknownFutureValue.enumValue = MSGraphServiceHealthOriginUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphServiceHealthOrigin*) UnknownEnumValue {
    static MSGraphServiceHealthOrigin *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphServiceHealthOrigin alloc] init];
        _unknownValue.enumValue = MSGraphServiceHealthOriginEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphServiceHealthOrigin*) serviceHealthOriginWithEnumValue:(MSGraphServiceHealthOriginValue)val {

    switch(val)
    {
        case MSGraphServiceHealthOriginMicrosoft:
            return [MSGraphServiceHealthOrigin microsoft];
        case MSGraphServiceHealthOriginThirdParty:
            return [MSGraphServiceHealthOrigin thirdParty];
        case MSGraphServiceHealthOriginCustomer:
            return [MSGraphServiceHealthOrigin customer];
        case MSGraphServiceHealthOriginUnknownFutureValue:
            return [MSGraphServiceHealthOrigin unknownFutureValue];
        case MSGraphServiceHealthOriginEndOfEnum:
        default:
            return [MSGraphServiceHealthOrigin UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphServiceHealthOriginMicrosoft:
            return @"microsoft";
        case MSGraphServiceHealthOriginThirdParty:
            return @"thirdParty";
        case MSGraphServiceHealthOriginCustomer:
            return @"customer";
        case MSGraphServiceHealthOriginUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphServiceHealthOriginEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphServiceHealthOriginValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphServiceHealthOrigin)

- (MSGraphServiceHealthOrigin*) toMSGraphServiceHealthOrigin{

    if([self isEqualToString:@"microsoft"])
    {
          return [MSGraphServiceHealthOrigin microsoft];
    }
    else if([self isEqualToString:@"thirdParty"])
    {
          return [MSGraphServiceHealthOrigin thirdParty];
    }
    else if([self isEqualToString:@"customer"])
    {
          return [MSGraphServiceHealthOrigin customer];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphServiceHealthOrigin unknownFutureValue];
    }
    else {
        return [MSGraphServiceHealthOrigin UnknownEnumValue];
    }
}

@end
