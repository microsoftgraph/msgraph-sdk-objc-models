// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsAclType.h"

@interface MSGraphExternalConnectorsAclType () {
    MSGraphExternalConnectorsAclTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExternalConnectorsAclTypeValue enumValue;
@end

@implementation MSGraphExternalConnectorsAclType

+ (MSGraphExternalConnectorsAclType*) user {
    static MSGraphExternalConnectorsAclType *_user;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[MSGraphExternalConnectorsAclType alloc] init];
        _user.enumValue = MSGraphExternalConnectorsAclTypeUser;
    });
    return _user;
}
+ (MSGraphExternalConnectorsAclType*) group {
    static MSGraphExternalConnectorsAclType *_group;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _group = [[MSGraphExternalConnectorsAclType alloc] init];
        _group.enumValue = MSGraphExternalConnectorsAclTypeGroup;
    });
    return _group;
}
+ (MSGraphExternalConnectorsAclType*) everyone {
    static MSGraphExternalConnectorsAclType *_everyone;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _everyone = [[MSGraphExternalConnectorsAclType alloc] init];
        _everyone.enumValue = MSGraphExternalConnectorsAclTypeEveryone;
    });
    return _everyone;
}
+ (MSGraphExternalConnectorsAclType*) everyoneExceptGuests {
    static MSGraphExternalConnectorsAclType *_everyoneExceptGuests;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _everyoneExceptGuests = [[MSGraphExternalConnectorsAclType alloc] init];
        _everyoneExceptGuests.enumValue = MSGraphExternalConnectorsAclTypeEveryoneExceptGuests;
    });
    return _everyoneExceptGuests;
}
+ (MSGraphExternalConnectorsAclType*) externalGroup {
    static MSGraphExternalConnectorsAclType *_externalGroup;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _externalGroup = [[MSGraphExternalConnectorsAclType alloc] init];
        _externalGroup.enumValue = MSGraphExternalConnectorsAclTypeExternalGroup;
    });
    return _externalGroup;
}
+ (MSGraphExternalConnectorsAclType*) unknownFutureValue {
    static MSGraphExternalConnectorsAclType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphExternalConnectorsAclType alloc] init];
        _unknownFutureValue.enumValue = MSGraphExternalConnectorsAclTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphExternalConnectorsAclType*) UnknownEnumValue {
    static MSGraphExternalConnectorsAclType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExternalConnectorsAclType alloc] init];
        _unknownValue.enumValue = MSGraphExternalConnectorsAclTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExternalConnectorsAclType*) aclTypeWithEnumValue:(MSGraphExternalConnectorsAclTypeValue)val {

    switch(val)
    {
        case MSGraphExternalConnectorsAclTypeUser:
            return [MSGraphExternalConnectorsAclType user];
        case MSGraphExternalConnectorsAclTypeGroup:
            return [MSGraphExternalConnectorsAclType group];
        case MSGraphExternalConnectorsAclTypeEveryone:
            return [MSGraphExternalConnectorsAclType everyone];
        case MSGraphExternalConnectorsAclTypeEveryoneExceptGuests:
            return [MSGraphExternalConnectorsAclType everyoneExceptGuests];
        case MSGraphExternalConnectorsAclTypeExternalGroup:
            return [MSGraphExternalConnectorsAclType externalGroup];
        case MSGraphExternalConnectorsAclTypeUnknownFutureValue:
            return [MSGraphExternalConnectorsAclType unknownFutureValue];
        case MSGraphExternalConnectorsAclTypeEndOfEnum:
        default:
            return [MSGraphExternalConnectorsAclType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExternalConnectorsAclTypeUser:
            return @"user";
        case MSGraphExternalConnectorsAclTypeGroup:
            return @"group";
        case MSGraphExternalConnectorsAclTypeEveryone:
            return @"everyone";
        case MSGraphExternalConnectorsAclTypeEveryoneExceptGuests:
            return @"everyoneExceptGuests";
        case MSGraphExternalConnectorsAclTypeExternalGroup:
            return @"externalGroup";
        case MSGraphExternalConnectorsAclTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphExternalConnectorsAclTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExternalConnectorsAclTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExternalConnectorsAclType)

- (MSGraphExternalConnectorsAclType*) toMSGraphExternalConnectorsAclType{

    if([self isEqualToString:@"user"])
    {
          return [MSGraphExternalConnectorsAclType user];
    }
    else if([self isEqualToString:@"group"])
    {
          return [MSGraphExternalConnectorsAclType group];
    }
    else if([self isEqualToString:@"everyone"])
    {
          return [MSGraphExternalConnectorsAclType everyone];
    }
    else if([self isEqualToString:@"everyoneExceptGuests"])
    {
          return [MSGraphExternalConnectorsAclType everyoneExceptGuests];
    }
    else if([self isEqualToString:@"externalGroup"])
    {
          return [MSGraphExternalConnectorsAclType externalGroup];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphExternalConnectorsAclType unknownFutureValue];
    }
    else {
        return [MSGraphExternalConnectorsAclType UnknownEnumValue];
    }
}

@end
