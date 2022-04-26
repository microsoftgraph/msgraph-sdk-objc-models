// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessPackageSubjectType.h"

@interface MSGraphAccessPackageSubjectType () {
    MSGraphAccessPackageSubjectTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessPackageSubjectTypeValue enumValue;
@end

@implementation MSGraphAccessPackageSubjectType

+ (MSGraphAccessPackageSubjectType*) notSpecified {
    static MSGraphAccessPackageSubjectType *_notSpecified;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notSpecified = [[MSGraphAccessPackageSubjectType alloc] init];
        _notSpecified.enumValue = MSGraphAccessPackageSubjectTypeNotSpecified;
    });
    return _notSpecified;
}
+ (MSGraphAccessPackageSubjectType*) user {
    static MSGraphAccessPackageSubjectType *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[MSGraphAccessPackageSubjectType alloc] init];
        _user.enumValue = MSGraphAccessPackageSubjectTypeUser;
    });
    return _user;
}
+ (MSGraphAccessPackageSubjectType*) servicePrincipal {
    static MSGraphAccessPackageSubjectType *_servicePrincipal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _servicePrincipal = [[MSGraphAccessPackageSubjectType alloc] init];
        _servicePrincipal.enumValue = MSGraphAccessPackageSubjectTypeServicePrincipal;
    });
    return _servicePrincipal;
}
+ (MSGraphAccessPackageSubjectType*) unknownFutureValue {
    static MSGraphAccessPackageSubjectType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessPackageSubjectType alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessPackageSubjectTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessPackageSubjectType*) UnknownEnumValue {
    static MSGraphAccessPackageSubjectType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessPackageSubjectType alloc] init];
        _unknownValue.enumValue = MSGraphAccessPackageSubjectTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessPackageSubjectType*) accessPackageSubjectTypeWithEnumValue:(MSGraphAccessPackageSubjectTypeValue)val {

    switch(val)
    {
        case MSGraphAccessPackageSubjectTypeNotSpecified:
            return [MSGraphAccessPackageSubjectType notSpecified];
        case MSGraphAccessPackageSubjectTypeUser:
            return [MSGraphAccessPackageSubjectType user];
        case MSGraphAccessPackageSubjectTypeServicePrincipal:
            return [MSGraphAccessPackageSubjectType servicePrincipal];
        case MSGraphAccessPackageSubjectTypeUnknownFutureValue:
            return [MSGraphAccessPackageSubjectType unknownFutureValue];
        case MSGraphAccessPackageSubjectTypeEndOfEnum:
        default:
            return [MSGraphAccessPackageSubjectType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessPackageSubjectTypeNotSpecified:
            return @"notSpecified";
        case MSGraphAccessPackageSubjectTypeUser:
            return @"user";
        case MSGraphAccessPackageSubjectTypeServicePrincipal:
            return @"servicePrincipal";
        case MSGraphAccessPackageSubjectTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessPackageSubjectTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessPackageSubjectTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessPackageSubjectType)

- (MSGraphAccessPackageSubjectType*) toMSGraphAccessPackageSubjectType{

    if([self isEqualToString:@"notSpecified"])
    {
          return [MSGraphAccessPackageSubjectType notSpecified];
    }
    else if([self isEqualToString:@"user"])
    {
          return [MSGraphAccessPackageSubjectType user];
    }
    else if([self isEqualToString:@"servicePrincipal"])
    {
          return [MSGraphAccessPackageSubjectType servicePrincipal];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessPackageSubjectType unknownFutureValue];
    }
    else {
        return [MSGraphAccessPackageSubjectType UnknownEnumValue];
    }
}

@end
