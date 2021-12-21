// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsIdentityType.h"

@interface MSGraphExternalConnectorsIdentityType () {
    MSGraphExternalConnectorsIdentityTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExternalConnectorsIdentityTypeValue enumValue;
@end

@implementation MSGraphExternalConnectorsIdentityType

+ (MSGraphExternalConnectorsIdentityType*) user {
    static MSGraphExternalConnectorsIdentityType *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[MSGraphExternalConnectorsIdentityType alloc] init];
        _user.enumValue = MSGraphExternalConnectorsIdentityTypeUser;
    });
    return _user;
}
+ (MSGraphExternalConnectorsIdentityType*) group {
    static MSGraphExternalConnectorsIdentityType *_group;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _group = [[MSGraphExternalConnectorsIdentityType alloc] init];
        _group.enumValue = MSGraphExternalConnectorsIdentityTypeGroup;
    });
    return _group;
}
+ (MSGraphExternalConnectorsIdentityType*) externalGroup {
    static MSGraphExternalConnectorsIdentityType *_externalGroup;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _externalGroup = [[MSGraphExternalConnectorsIdentityType alloc] init];
        _externalGroup.enumValue = MSGraphExternalConnectorsIdentityTypeExternalGroup;
    });
    return _externalGroup;
}
+ (MSGraphExternalConnectorsIdentityType*) unknownFutureValue {
    static MSGraphExternalConnectorsIdentityType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphExternalConnectorsIdentityType alloc] init];
        _unknownFutureValue.enumValue = MSGraphExternalConnectorsIdentityTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphExternalConnectorsIdentityType*) UnknownEnumValue {
    static MSGraphExternalConnectorsIdentityType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExternalConnectorsIdentityType alloc] init];
        _unknownValue.enumValue = MSGraphExternalConnectorsIdentityTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExternalConnectorsIdentityType*) identityTypeWithEnumValue:(MSGraphExternalConnectorsIdentityTypeValue)val {

    switch(val)
    {
        case MSGraphExternalConnectorsIdentityTypeUser:
            return [MSGraphExternalConnectorsIdentityType user];
        case MSGraphExternalConnectorsIdentityTypeGroup:
            return [MSGraphExternalConnectorsIdentityType group];
        case MSGraphExternalConnectorsIdentityTypeExternalGroup:
            return [MSGraphExternalConnectorsIdentityType externalGroup];
        case MSGraphExternalConnectorsIdentityTypeUnknownFutureValue:
            return [MSGraphExternalConnectorsIdentityType unknownFutureValue];
        case MSGraphExternalConnectorsIdentityTypeEndOfEnum:
        default:
            return [MSGraphExternalConnectorsIdentityType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExternalConnectorsIdentityTypeUser:
            return @"user";
        case MSGraphExternalConnectorsIdentityTypeGroup:
            return @"group";
        case MSGraphExternalConnectorsIdentityTypeExternalGroup:
            return @"externalGroup";
        case MSGraphExternalConnectorsIdentityTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphExternalConnectorsIdentityTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExternalConnectorsIdentityTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExternalConnectorsIdentityType)

- (MSGraphExternalConnectorsIdentityType*) toMSGraphExternalConnectorsIdentityType{

    if([self isEqualToString:@"user"])
    {
          return [MSGraphExternalConnectorsIdentityType user];
    }
    else if([self isEqualToString:@"group"])
    {
          return [MSGraphExternalConnectorsIdentityType group];
    }
    else if([self isEqualToString:@"externalGroup"])
    {
          return [MSGraphExternalConnectorsIdentityType externalGroup];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphExternalConnectorsIdentityType unknownFutureValue];
    }
    else {
        return [MSGraphExternalConnectorsIdentityType UnknownEnumValue];
    }
}

@end
