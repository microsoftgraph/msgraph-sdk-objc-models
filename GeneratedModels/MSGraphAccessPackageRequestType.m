// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessPackageRequestType.h"

@interface MSGraphAccessPackageRequestType () {
    MSGraphAccessPackageRequestTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessPackageRequestTypeValue enumValue;
@end

@implementation MSGraphAccessPackageRequestType

+ (MSGraphAccessPackageRequestType*) notSpecified {
    static MSGraphAccessPackageRequestType *_notSpecified;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notSpecified = [[MSGraphAccessPackageRequestType alloc] init];
        _notSpecified.enumValue = MSGraphAccessPackageRequestTypeNotSpecified;
    });
    return _notSpecified;
}
+ (MSGraphAccessPackageRequestType*) userAdd {
    static MSGraphAccessPackageRequestType *_userAdd;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userAdd = [[MSGraphAccessPackageRequestType alloc] init];
        _userAdd.enumValue = MSGraphAccessPackageRequestTypeUserAdd;
    });
    return _userAdd;
}
+ (MSGraphAccessPackageRequestType*) userUpdate {
    static MSGraphAccessPackageRequestType *_userUpdate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userUpdate = [[MSGraphAccessPackageRequestType alloc] init];
        _userUpdate.enumValue = MSGraphAccessPackageRequestTypeUserUpdate;
    });
    return _userUpdate;
}
+ (MSGraphAccessPackageRequestType*) userRemove {
    static MSGraphAccessPackageRequestType *_userRemove;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userRemove = [[MSGraphAccessPackageRequestType alloc] init];
        _userRemove.enumValue = MSGraphAccessPackageRequestTypeUserRemove;
    });
    return _userRemove;
}
+ (MSGraphAccessPackageRequestType*) adminAdd {
    static MSGraphAccessPackageRequestType *_adminAdd;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminAdd = [[MSGraphAccessPackageRequestType alloc] init];
        _adminAdd.enumValue = MSGraphAccessPackageRequestTypeAdminAdd;
    });
    return _adminAdd;
}
+ (MSGraphAccessPackageRequestType*) adminUpdate {
    static MSGraphAccessPackageRequestType *_adminUpdate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminUpdate = [[MSGraphAccessPackageRequestType alloc] init];
        _adminUpdate.enumValue = MSGraphAccessPackageRequestTypeAdminUpdate;
    });
    return _adminUpdate;
}
+ (MSGraphAccessPackageRequestType*) adminRemove {
    static MSGraphAccessPackageRequestType *_adminRemove;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminRemove = [[MSGraphAccessPackageRequestType alloc] init];
        _adminRemove.enumValue = MSGraphAccessPackageRequestTypeAdminRemove;
    });
    return _adminRemove;
}
+ (MSGraphAccessPackageRequestType*) systemAdd {
    static MSGraphAccessPackageRequestType *_systemAdd;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _systemAdd = [[MSGraphAccessPackageRequestType alloc] init];
        _systemAdd.enumValue = MSGraphAccessPackageRequestTypeSystemAdd;
    });
    return _systemAdd;
}
+ (MSGraphAccessPackageRequestType*) systemUpdate {
    static MSGraphAccessPackageRequestType *_systemUpdate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _systemUpdate = [[MSGraphAccessPackageRequestType alloc] init];
        _systemUpdate.enumValue = MSGraphAccessPackageRequestTypeSystemUpdate;
    });
    return _systemUpdate;
}
+ (MSGraphAccessPackageRequestType*) systemRemove {
    static MSGraphAccessPackageRequestType *_systemRemove;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _systemRemove = [[MSGraphAccessPackageRequestType alloc] init];
        _systemRemove.enumValue = MSGraphAccessPackageRequestTypeSystemRemove;
    });
    return _systemRemove;
}
+ (MSGraphAccessPackageRequestType*) onBehalfAdd {
    static MSGraphAccessPackageRequestType *_onBehalfAdd;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _onBehalfAdd = [[MSGraphAccessPackageRequestType alloc] init];
        _onBehalfAdd.enumValue = MSGraphAccessPackageRequestTypeOnBehalfAdd;
    });
    return _onBehalfAdd;
}
+ (MSGraphAccessPackageRequestType*) unknownFutureValue {
    static MSGraphAccessPackageRequestType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessPackageRequestType alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessPackageRequestTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessPackageRequestType*) UnknownEnumValue {
    static MSGraphAccessPackageRequestType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessPackageRequestType alloc] init];
        _unknownValue.enumValue = MSGraphAccessPackageRequestTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessPackageRequestType*) accessPackageRequestTypeWithEnumValue:(MSGraphAccessPackageRequestTypeValue)val {

    switch(val)
    {
        case MSGraphAccessPackageRequestTypeNotSpecified:
            return [MSGraphAccessPackageRequestType notSpecified];
        case MSGraphAccessPackageRequestTypeUserAdd:
            return [MSGraphAccessPackageRequestType userAdd];
        case MSGraphAccessPackageRequestTypeUserUpdate:
            return [MSGraphAccessPackageRequestType userUpdate];
        case MSGraphAccessPackageRequestTypeUserRemove:
            return [MSGraphAccessPackageRequestType userRemove];
        case MSGraphAccessPackageRequestTypeAdminAdd:
            return [MSGraphAccessPackageRequestType adminAdd];
        case MSGraphAccessPackageRequestTypeAdminUpdate:
            return [MSGraphAccessPackageRequestType adminUpdate];
        case MSGraphAccessPackageRequestTypeAdminRemove:
            return [MSGraphAccessPackageRequestType adminRemove];
        case MSGraphAccessPackageRequestTypeSystemAdd:
            return [MSGraphAccessPackageRequestType systemAdd];
        case MSGraphAccessPackageRequestTypeSystemUpdate:
            return [MSGraphAccessPackageRequestType systemUpdate];
        case MSGraphAccessPackageRequestTypeSystemRemove:
            return [MSGraphAccessPackageRequestType systemRemove];
        case MSGraphAccessPackageRequestTypeOnBehalfAdd:
            return [MSGraphAccessPackageRequestType onBehalfAdd];
        case MSGraphAccessPackageRequestTypeUnknownFutureValue:
            return [MSGraphAccessPackageRequestType unknownFutureValue];
        case MSGraphAccessPackageRequestTypeEndOfEnum:
        default:
            return [MSGraphAccessPackageRequestType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessPackageRequestTypeNotSpecified:
            return @"notSpecified";
        case MSGraphAccessPackageRequestTypeUserAdd:
            return @"userAdd";
        case MSGraphAccessPackageRequestTypeUserUpdate:
            return @"userUpdate";
        case MSGraphAccessPackageRequestTypeUserRemove:
            return @"userRemove";
        case MSGraphAccessPackageRequestTypeAdminAdd:
            return @"adminAdd";
        case MSGraphAccessPackageRequestTypeAdminUpdate:
            return @"adminUpdate";
        case MSGraphAccessPackageRequestTypeAdminRemove:
            return @"adminRemove";
        case MSGraphAccessPackageRequestTypeSystemAdd:
            return @"systemAdd";
        case MSGraphAccessPackageRequestTypeSystemUpdate:
            return @"systemUpdate";
        case MSGraphAccessPackageRequestTypeSystemRemove:
            return @"systemRemove";
        case MSGraphAccessPackageRequestTypeOnBehalfAdd:
            return @"onBehalfAdd";
        case MSGraphAccessPackageRequestTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessPackageRequestTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessPackageRequestTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessPackageRequestType)

- (MSGraphAccessPackageRequestType*) toMSGraphAccessPackageRequestType{

    if([self isEqualToString:@"notSpecified"])
    {
          return [MSGraphAccessPackageRequestType notSpecified];
    }
    else if([self isEqualToString:@"userAdd"])
    {
          return [MSGraphAccessPackageRequestType userAdd];
    }
    else if([self isEqualToString:@"userUpdate"])
    {
          return [MSGraphAccessPackageRequestType userUpdate];
    }
    else if([self isEqualToString:@"userRemove"])
    {
          return [MSGraphAccessPackageRequestType userRemove];
    }
    else if([self isEqualToString:@"adminAdd"])
    {
          return [MSGraphAccessPackageRequestType adminAdd];
    }
    else if([self isEqualToString:@"adminUpdate"])
    {
          return [MSGraphAccessPackageRequestType adminUpdate];
    }
    else if([self isEqualToString:@"adminRemove"])
    {
          return [MSGraphAccessPackageRequestType adminRemove];
    }
    else if([self isEqualToString:@"systemAdd"])
    {
          return [MSGraphAccessPackageRequestType systemAdd];
    }
    else if([self isEqualToString:@"systemUpdate"])
    {
          return [MSGraphAccessPackageRequestType systemUpdate];
    }
    else if([self isEqualToString:@"systemRemove"])
    {
          return [MSGraphAccessPackageRequestType systemRemove];
    }
    else if([self isEqualToString:@"onBehalfAdd"])
    {
          return [MSGraphAccessPackageRequestType onBehalfAdd];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessPackageRequestType unknownFutureValue];
    }
    else {
        return [MSGraphAccessPackageRequestType UnknownEnumValue];
    }
}

@end
