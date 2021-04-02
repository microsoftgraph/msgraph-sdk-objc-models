// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphInitiatorType.h"

@interface MSGraphInitiatorType () {
    MSGraphInitiatorTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphInitiatorTypeValue enumValue;
@end

@implementation MSGraphInitiatorType

+ (MSGraphInitiatorType*) user {
    static MSGraphInitiatorType *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[MSGraphInitiatorType alloc] init];
        _user.enumValue = MSGraphInitiatorTypeUser;
    });
    return _user;
}
+ (MSGraphInitiatorType*) application {
    static MSGraphInitiatorType *_application;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _application = [[MSGraphInitiatorType alloc] init];
        _application.enumValue = MSGraphInitiatorTypeApplication;
    });
    return _application;
}
+ (MSGraphInitiatorType*) system {
    static MSGraphInitiatorType *_system;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _system = [[MSGraphInitiatorType alloc] init];
        _system.enumValue = MSGraphInitiatorTypeSystem;
    });
    return _system;
}
+ (MSGraphInitiatorType*) unknownFutureValue {
    static MSGraphInitiatorType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphInitiatorType alloc] init];
        _unknownFutureValue.enumValue = MSGraphInitiatorTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphInitiatorType*) UnknownEnumValue {
    static MSGraphInitiatorType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphInitiatorType alloc] init];
        _unknownValue.enumValue = MSGraphInitiatorTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphInitiatorType*) initiatorTypeWithEnumValue:(MSGraphInitiatorTypeValue)val {

    switch(val)
    {
        case MSGraphInitiatorTypeUser:
            return [MSGraphInitiatorType user];
        case MSGraphInitiatorTypeApplication:
            return [MSGraphInitiatorType application];
        case MSGraphInitiatorTypeSystem:
            return [MSGraphInitiatorType system];
        case MSGraphInitiatorTypeUnknownFutureValue:
            return [MSGraphInitiatorType unknownFutureValue];
        case MSGraphInitiatorTypeEndOfEnum:
        default:
            return [MSGraphInitiatorType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphInitiatorTypeUser:
            return @"user";
        case MSGraphInitiatorTypeApplication:
            return @"application";
        case MSGraphInitiatorTypeSystem:
            return @"system";
        case MSGraphInitiatorTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphInitiatorTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphInitiatorTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphInitiatorType)

- (MSGraphInitiatorType*) toMSGraphInitiatorType{

    if([self isEqualToString:@"user"])
    {
          return [MSGraphInitiatorType user];
    }
    else if([self isEqualToString:@"application"])
    {
          return [MSGraphInitiatorType application];
    }
    else if([self isEqualToString:@"system"])
    {
          return [MSGraphInitiatorType system];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphInitiatorType unknownFutureValue];
    }
    else {
        return [MSGraphInitiatorType UnknownEnumValue];
    }
}

@end
