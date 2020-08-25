// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSecurityResourceType.h"

@interface MSGraphSecurityResourceType () {
    MSGraphSecurityResourceTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSecurityResourceTypeValue enumValue;
@end

@implementation MSGraphSecurityResourceType

+ (MSGraphSecurityResourceType*) unknown {
    static MSGraphSecurityResourceType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphSecurityResourceType alloc] init];
        _unknown.enumValue = MSGraphSecurityResourceTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphSecurityResourceType*) attacked {
    static MSGraphSecurityResourceType *_attacked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _attacked = [[MSGraphSecurityResourceType alloc] init];
        _attacked.enumValue = MSGraphSecurityResourceTypeAttacked;
    });
    return _attacked;
}
+ (MSGraphSecurityResourceType*) related {
    static MSGraphSecurityResourceType *_related;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _related = [[MSGraphSecurityResourceType alloc] init];
        _related.enumValue = MSGraphSecurityResourceTypeRelated;
    });
    return _related;
}
+ (MSGraphSecurityResourceType*) unknownFutureValue {
    static MSGraphSecurityResourceType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphSecurityResourceType alloc] init];
        _unknownFutureValue.enumValue = MSGraphSecurityResourceTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphSecurityResourceType*) UnknownEnumValue {
    static MSGraphSecurityResourceType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSecurityResourceType alloc] init];
        _unknownValue.enumValue = MSGraphSecurityResourceTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSecurityResourceType*) securityResourceTypeWithEnumValue:(MSGraphSecurityResourceTypeValue)val {

    switch(val)
    {
        case MSGraphSecurityResourceTypeUnknown:
            return [MSGraphSecurityResourceType unknown];
        case MSGraphSecurityResourceTypeAttacked:
            return [MSGraphSecurityResourceType attacked];
        case MSGraphSecurityResourceTypeRelated:
            return [MSGraphSecurityResourceType related];
        case MSGraphSecurityResourceTypeUnknownFutureValue:
            return [MSGraphSecurityResourceType unknownFutureValue];
        case MSGraphSecurityResourceTypeEndOfEnum:
        default:
            return [MSGraphSecurityResourceType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSecurityResourceTypeUnknown:
            return @"unknown";
        case MSGraphSecurityResourceTypeAttacked:
            return @"attacked";
        case MSGraphSecurityResourceTypeRelated:
            return @"related";
        case MSGraphSecurityResourceTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphSecurityResourceTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSecurityResourceTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSecurityResourceType)

- (MSGraphSecurityResourceType*) toMSGraphSecurityResourceType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphSecurityResourceType unknown];
    }
    else if([self isEqualToString:@"attacked"])
    {
          return [MSGraphSecurityResourceType attacked];
    }
    else if([self isEqualToString:@"related"])
    {
          return [MSGraphSecurityResourceType related];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphSecurityResourceType unknownFutureValue];
    }
    else {
        return [MSGraphSecurityResourceType UnknownEnumValue];
    }
}

@end
