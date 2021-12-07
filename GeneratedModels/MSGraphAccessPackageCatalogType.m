// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessPackageCatalogType.h"

@interface MSGraphAccessPackageCatalogType () {
    MSGraphAccessPackageCatalogTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessPackageCatalogTypeValue enumValue;
@end

@implementation MSGraphAccessPackageCatalogType

+ (MSGraphAccessPackageCatalogType*) userManaged {
    static MSGraphAccessPackageCatalogType *_userManaged;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userManaged = [[MSGraphAccessPackageCatalogType alloc] init];
        _userManaged.enumValue = MSGraphAccessPackageCatalogTypeUserManaged;
    });
    return _userManaged;
}
+ (MSGraphAccessPackageCatalogType*) serviceDefault {
    static MSGraphAccessPackageCatalogType *_serviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _serviceDefault = [[MSGraphAccessPackageCatalogType alloc] init];
        _serviceDefault.enumValue = MSGraphAccessPackageCatalogTypeServiceDefault;
    });
    return _serviceDefault;
}
+ (MSGraphAccessPackageCatalogType*) serviceManaged {
    static MSGraphAccessPackageCatalogType *_serviceManaged;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _serviceManaged = [[MSGraphAccessPackageCatalogType alloc] init];
        _serviceManaged.enumValue = MSGraphAccessPackageCatalogTypeServiceManaged;
    });
    return _serviceManaged;
}
+ (MSGraphAccessPackageCatalogType*) unknownFutureValue {
    static MSGraphAccessPackageCatalogType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessPackageCatalogType alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessPackageCatalogTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessPackageCatalogType*) UnknownEnumValue {
    static MSGraphAccessPackageCatalogType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessPackageCatalogType alloc] init];
        _unknownValue.enumValue = MSGraphAccessPackageCatalogTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessPackageCatalogType*) accessPackageCatalogTypeWithEnumValue:(MSGraphAccessPackageCatalogTypeValue)val {

    switch(val)
    {
        case MSGraphAccessPackageCatalogTypeUserManaged:
            return [MSGraphAccessPackageCatalogType userManaged];
        case MSGraphAccessPackageCatalogTypeServiceDefault:
            return [MSGraphAccessPackageCatalogType serviceDefault];
        case MSGraphAccessPackageCatalogTypeServiceManaged:
            return [MSGraphAccessPackageCatalogType serviceManaged];
        case MSGraphAccessPackageCatalogTypeUnknownFutureValue:
            return [MSGraphAccessPackageCatalogType unknownFutureValue];
        case MSGraphAccessPackageCatalogTypeEndOfEnum:
        default:
            return [MSGraphAccessPackageCatalogType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessPackageCatalogTypeUserManaged:
            return @"userManaged";
        case MSGraphAccessPackageCatalogTypeServiceDefault:
            return @"serviceDefault";
        case MSGraphAccessPackageCatalogTypeServiceManaged:
            return @"serviceManaged";
        case MSGraphAccessPackageCatalogTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessPackageCatalogTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessPackageCatalogTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessPackageCatalogType)

- (MSGraphAccessPackageCatalogType*) toMSGraphAccessPackageCatalogType{

    if([self isEqualToString:@"userManaged"])
    {
          return [MSGraphAccessPackageCatalogType userManaged];
    }
    else if([self isEqualToString:@"serviceDefault"])
    {
          return [MSGraphAccessPackageCatalogType serviceDefault];
    }
    else if([self isEqualToString:@"serviceManaged"])
    {
          return [MSGraphAccessPackageCatalogType serviceManaged];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessPackageCatalogType unknownFutureValue];
    }
    else {
        return [MSGraphAccessPackageCatalogType UnknownEnumValue];
    }
}

@end
