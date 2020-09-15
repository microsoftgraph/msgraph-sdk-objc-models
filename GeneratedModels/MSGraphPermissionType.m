// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPermissionType.h"

@interface MSGraphPermissionType () {
    MSGraphPermissionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPermissionTypeValue enumValue;
@end

@implementation MSGraphPermissionType

+ (MSGraphPermissionType*) delegatedUserConsentable {
    static MSGraphPermissionType *_delegatedUserConsentable;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delegatedUserConsentable = [[MSGraphPermissionType alloc] init];
        _delegatedUserConsentable.enumValue = MSGraphPermissionTypeDelegatedUserConsentable;
    });
    return _delegatedUserConsentable;
}
+ (MSGraphPermissionType*) delegated {
    static MSGraphPermissionType *_delegated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delegated = [[MSGraphPermissionType alloc] init];
        _delegated.enumValue = MSGraphPermissionTypeDelegated;
    });
    return _delegated;
}
+ (MSGraphPermissionType*) application {
    static MSGraphPermissionType *_application;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _application = [[MSGraphPermissionType alloc] init];
        _application.enumValue = MSGraphPermissionTypeApplication;
    });
    return _application;
}

+ (MSGraphPermissionType*) UnknownEnumValue {
    static MSGraphPermissionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPermissionType alloc] init];
        _unknownValue.enumValue = MSGraphPermissionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPermissionType*) permissionTypeWithEnumValue:(MSGraphPermissionTypeValue)val {

    switch(val)
    {
        case MSGraphPermissionTypeApplication:
            return [MSGraphPermissionType application];
        case MSGraphPermissionTypeDelegated:
            return [MSGraphPermissionType delegated];
        case MSGraphPermissionTypeDelegatedUserConsentable:
            return [MSGraphPermissionType delegatedUserConsentable];
        case MSGraphPermissionTypeEndOfEnum:
        default:
            return [MSGraphPermissionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPermissionTypeApplication:
            return @"application";
        case MSGraphPermissionTypeDelegated:
            return @"delegated";
        case MSGraphPermissionTypeDelegatedUserConsentable:
            return @"delegatedUserConsentable";
        case MSGraphPermissionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPermissionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPermissionType)

- (MSGraphPermissionType*) toMSGraphPermissionType{

    if([self isEqualToString:@"application"])
    {
          return [MSGraphPermissionType application];
    }
    else if([self isEqualToString:@"delegated"])
    {
          return [MSGraphPermissionType delegated];
    }
    else if([self isEqualToString:@"delegatedUserConsentable"])
    {
          return [MSGraphPermissionType delegatedUserConsentable];
    }
    else {
        return [MSGraphPermissionType UnknownEnumValue];
    }
}

@end
