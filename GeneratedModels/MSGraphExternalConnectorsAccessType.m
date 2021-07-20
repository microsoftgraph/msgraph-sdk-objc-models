// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsAccessType.h"

@interface MSGraphExternalConnectorsAccessType () {
    MSGraphExternalConnectorsAccessTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExternalConnectorsAccessTypeValue enumValue;
@end

@implementation MSGraphExternalConnectorsAccessType

+ (MSGraphExternalConnectorsAccessType*) grant {
    static MSGraphExternalConnectorsAccessType *_grant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _grant = [[MSGraphExternalConnectorsAccessType alloc] init];
        _grant.enumValue = MSGraphExternalConnectorsAccessTypeGrant;
    });
    return _grant;
}
+ (MSGraphExternalConnectorsAccessType*) deny {
    static MSGraphExternalConnectorsAccessType *_deny;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deny = [[MSGraphExternalConnectorsAccessType alloc] init];
        _deny.enumValue = MSGraphExternalConnectorsAccessTypeDeny;
    });
    return _deny;
}
+ (MSGraphExternalConnectorsAccessType*) unknownFutureValue {
    static MSGraphExternalConnectorsAccessType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphExternalConnectorsAccessType alloc] init];
        _unknownFutureValue.enumValue = MSGraphExternalConnectorsAccessTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphExternalConnectorsAccessType*) UnknownEnumValue {
    static MSGraphExternalConnectorsAccessType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExternalConnectorsAccessType alloc] init];
        _unknownValue.enumValue = MSGraphExternalConnectorsAccessTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExternalConnectorsAccessType*) accessTypeWithEnumValue:(MSGraphExternalConnectorsAccessTypeValue)val {

    switch(val)
    {
        case MSGraphExternalConnectorsAccessTypeGrant:
            return [MSGraphExternalConnectorsAccessType grant];
        case MSGraphExternalConnectorsAccessTypeDeny:
            return [MSGraphExternalConnectorsAccessType deny];
        case MSGraphExternalConnectorsAccessTypeUnknownFutureValue:
            return [MSGraphExternalConnectorsAccessType unknownFutureValue];
        case MSGraphExternalConnectorsAccessTypeEndOfEnum:
        default:
            return [MSGraphExternalConnectorsAccessType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExternalConnectorsAccessTypeGrant:
            return @"grant";
        case MSGraphExternalConnectorsAccessTypeDeny:
            return @"deny";
        case MSGraphExternalConnectorsAccessTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphExternalConnectorsAccessTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExternalConnectorsAccessTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExternalConnectorsAccessType)

- (MSGraphExternalConnectorsAccessType*) toMSGraphExternalConnectorsAccessType{

    if([self isEqualToString:@"grant"])
    {
          return [MSGraphExternalConnectorsAccessType grant];
    }
    else if([self isEqualToString:@"deny"])
    {
          return [MSGraphExternalConnectorsAccessType deny];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphExternalConnectorsAccessType unknownFutureValue];
    }
    else {
        return [MSGraphExternalConnectorsAccessType UnknownEnumValue];
    }
}

@end
