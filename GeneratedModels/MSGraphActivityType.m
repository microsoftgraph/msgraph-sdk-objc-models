// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphActivityType.h"

@interface MSGraphActivityType () {
    MSGraphActivityTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphActivityTypeValue enumValue;
@end

@implementation MSGraphActivityType

+ (MSGraphActivityType*) signin {
    static MSGraphActivityType *_signin;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _signin = [[MSGraphActivityType alloc] init];
        _signin.enumValue = MSGraphActivityTypeSignin;
    });
    return _signin;
}
+ (MSGraphActivityType*) user {
    static MSGraphActivityType *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[MSGraphActivityType alloc] init];
        _user.enumValue = MSGraphActivityTypeUser;
    });
    return _user;
}
+ (MSGraphActivityType*) unknownFutureValue {
    static MSGraphActivityType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphActivityType alloc] init];
        _unknownFutureValue.enumValue = MSGraphActivityTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphActivityType*) UnknownEnumValue {
    static MSGraphActivityType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphActivityType alloc] init];
        _unknownValue.enumValue = MSGraphActivityTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphActivityType*) activityTypeWithEnumValue:(MSGraphActivityTypeValue)val {

    switch(val)
    {
        case MSGraphActivityTypeSignin:
            return [MSGraphActivityType signin];
        case MSGraphActivityTypeUser:
            return [MSGraphActivityType user];
        case MSGraphActivityTypeUnknownFutureValue:
            return [MSGraphActivityType unknownFutureValue];
        case MSGraphActivityTypeEndOfEnum:
        default:
            return [MSGraphActivityType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphActivityTypeSignin:
            return @"signin";
        case MSGraphActivityTypeUser:
            return @"user";
        case MSGraphActivityTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphActivityTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphActivityTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphActivityType)

- (MSGraphActivityType*) toMSGraphActivityType{

    if([self isEqualToString:@"signin"])
    {
          return [MSGraphActivityType signin];
    }
    else if([self isEqualToString:@"user"])
    {
          return [MSGraphActivityType user];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphActivityType unknownFutureValue];
    }
    else {
        return [MSGraphActivityType UnknownEnumValue];
    }
}

@end
