// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAuthenticationMethodTargetType.h"

@interface MSGraphAuthenticationMethodTargetType () {
    MSGraphAuthenticationMethodTargetTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAuthenticationMethodTargetTypeValue enumValue;
@end

@implementation MSGraphAuthenticationMethodTargetType

+ (MSGraphAuthenticationMethodTargetType*) user {
    static MSGraphAuthenticationMethodTargetType *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[MSGraphAuthenticationMethodTargetType alloc] init];
        _user.enumValue = MSGraphAuthenticationMethodTargetTypeUser;
    });
    return _user;
}
+ (MSGraphAuthenticationMethodTargetType*) group {
    static MSGraphAuthenticationMethodTargetType *_group;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _group = [[MSGraphAuthenticationMethodTargetType alloc] init];
        _group.enumValue = MSGraphAuthenticationMethodTargetTypeGroup;
    });
    return _group;
}
+ (MSGraphAuthenticationMethodTargetType*) unknownFutureValue {
    static MSGraphAuthenticationMethodTargetType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAuthenticationMethodTargetType alloc] init];
        _unknownFutureValue.enumValue = MSGraphAuthenticationMethodTargetTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAuthenticationMethodTargetType*) UnknownEnumValue {
    static MSGraphAuthenticationMethodTargetType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAuthenticationMethodTargetType alloc] init];
        _unknownValue.enumValue = MSGraphAuthenticationMethodTargetTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAuthenticationMethodTargetType*) authenticationMethodTargetTypeWithEnumValue:(MSGraphAuthenticationMethodTargetTypeValue)val {

    switch(val)
    {
        case MSGraphAuthenticationMethodTargetTypeUser:
            return [MSGraphAuthenticationMethodTargetType user];
        case MSGraphAuthenticationMethodTargetTypeGroup:
            return [MSGraphAuthenticationMethodTargetType group];
        case MSGraphAuthenticationMethodTargetTypeUnknownFutureValue:
            return [MSGraphAuthenticationMethodTargetType unknownFutureValue];
        case MSGraphAuthenticationMethodTargetTypeEndOfEnum:
        default:
            return [MSGraphAuthenticationMethodTargetType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAuthenticationMethodTargetTypeUser:
            return @"user";
        case MSGraphAuthenticationMethodTargetTypeGroup:
            return @"group";
        case MSGraphAuthenticationMethodTargetTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAuthenticationMethodTargetTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAuthenticationMethodTargetTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAuthenticationMethodTargetType)

- (MSGraphAuthenticationMethodTargetType*) toMSGraphAuthenticationMethodTargetType{

    if([self isEqualToString:@"user"])
    {
          return [MSGraphAuthenticationMethodTargetType user];
    }
    else if([self isEqualToString:@"group"])
    {
          return [MSGraphAuthenticationMethodTargetType group];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAuthenticationMethodTargetType unknownFutureValue];
    }
    else {
        return [MSGraphAuthenticationMethodTargetType UnknownEnumValue];
    }
}

@end
