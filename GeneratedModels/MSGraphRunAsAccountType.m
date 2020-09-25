// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRunAsAccountType.h"

@interface MSGraphRunAsAccountType () {
    MSGraphRunAsAccountTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRunAsAccountTypeValue enumValue;
@end

@implementation MSGraphRunAsAccountType

+ (MSGraphRunAsAccountType*) system {
    static MSGraphRunAsAccountType *_system;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _system = [[MSGraphRunAsAccountType alloc] init];
        _system.enumValue = MSGraphRunAsAccountTypeSystem;
    });
    return _system;
}
+ (MSGraphRunAsAccountType*) user {
    static MSGraphRunAsAccountType *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[MSGraphRunAsAccountType alloc] init];
        _user.enumValue = MSGraphRunAsAccountTypeUser;
    });
    return _user;
}

+ (MSGraphRunAsAccountType*) UnknownEnumValue {
    static MSGraphRunAsAccountType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRunAsAccountType alloc] init];
        _unknownValue.enumValue = MSGraphRunAsAccountTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRunAsAccountType*) runAsAccountTypeWithEnumValue:(MSGraphRunAsAccountTypeValue)val {

    switch(val)
    {
        case MSGraphRunAsAccountTypeSystem:
            return [MSGraphRunAsAccountType system];
        case MSGraphRunAsAccountTypeUser:
            return [MSGraphRunAsAccountType user];
        case MSGraphRunAsAccountTypeEndOfEnum:
        default:
            return [MSGraphRunAsAccountType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRunAsAccountTypeSystem:
            return @"system";
        case MSGraphRunAsAccountTypeUser:
            return @"user";
        case MSGraphRunAsAccountTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRunAsAccountTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRunAsAccountType)

- (MSGraphRunAsAccountType*) toMSGraphRunAsAccountType{

    if([self isEqualToString:@"system"])
    {
          return [MSGraphRunAsAccountType system];
    }
    else if([self isEqualToString:@"user"])
    {
          return [MSGraphRunAsAccountType user];
    }
    else {
        return [MSGraphRunAsAccountType UnknownEnumValue];
    }
}

@end
