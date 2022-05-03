// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSubjectRightsRequestType.h"

@interface MSGraphSubjectRightsRequestType () {
    MSGraphSubjectRightsRequestTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSubjectRightsRequestTypeValue enumValue;
@end

@implementation MSGraphSubjectRightsRequestType

+ (MSGraphSubjectRightsRequestType*) export {
    static MSGraphSubjectRightsRequestType *_export;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _export = [[MSGraphSubjectRightsRequestType alloc] init];
        _export.enumValue = MSGraphSubjectRightsRequestTypeExport;
    });
    return _export;
}
+ (MSGraphSubjectRightsRequestType*) delete {
    static MSGraphSubjectRightsRequestType *_delete;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _delete = [[MSGraphSubjectRightsRequestType alloc] init];
        _delete.enumValue = MSGraphSubjectRightsRequestTypeDelete;
    });
    return _delete;
}
+ (MSGraphSubjectRightsRequestType*) access {
    static MSGraphSubjectRightsRequestType *_access;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _access = [[MSGraphSubjectRightsRequestType alloc] init];
        _access.enumValue = MSGraphSubjectRightsRequestTypeAccess;
    });
    return _access;
}
+ (MSGraphSubjectRightsRequestType*) tagForAction {
    static MSGraphSubjectRightsRequestType *_tagForAction;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tagForAction = [[MSGraphSubjectRightsRequestType alloc] init];
        _tagForAction.enumValue = MSGraphSubjectRightsRequestTypeTagForAction;
    });
    return _tagForAction;
}
+ (MSGraphSubjectRightsRequestType*) unknownFutureValue {
    static MSGraphSubjectRightsRequestType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphSubjectRightsRequestType alloc] init];
        _unknownFutureValue.enumValue = MSGraphSubjectRightsRequestTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphSubjectRightsRequestType*) UnknownEnumValue {
    static MSGraphSubjectRightsRequestType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSubjectRightsRequestType alloc] init];
        _unknownValue.enumValue = MSGraphSubjectRightsRequestTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSubjectRightsRequestType*) subjectRightsRequestTypeWithEnumValue:(MSGraphSubjectRightsRequestTypeValue)val {

    switch(val)
    {
        case MSGraphSubjectRightsRequestTypeExport:
            return [MSGraphSubjectRightsRequestType export];
        case MSGraphSubjectRightsRequestTypeDelete:
            return [MSGraphSubjectRightsRequestType delete];
        case MSGraphSubjectRightsRequestTypeAccess:
            return [MSGraphSubjectRightsRequestType access];
        case MSGraphSubjectRightsRequestTypeTagForAction:
            return [MSGraphSubjectRightsRequestType tagForAction];
        case MSGraphSubjectRightsRequestTypeUnknownFutureValue:
            return [MSGraphSubjectRightsRequestType unknownFutureValue];
        case MSGraphSubjectRightsRequestTypeEndOfEnum:
        default:
            return [MSGraphSubjectRightsRequestType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSubjectRightsRequestTypeExport:
            return @"export";
        case MSGraphSubjectRightsRequestTypeDelete:
            return @"delete";
        case MSGraphSubjectRightsRequestTypeAccess:
            return @"access";
        case MSGraphSubjectRightsRequestTypeTagForAction:
            return @"tagForAction";
        case MSGraphSubjectRightsRequestTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphSubjectRightsRequestTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSubjectRightsRequestTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSubjectRightsRequestType)

- (MSGraphSubjectRightsRequestType*) toMSGraphSubjectRightsRequestType{

    if([self isEqualToString:@"export"])
    {
          return [MSGraphSubjectRightsRequestType export];
    }
    else if([self isEqualToString:@"delete"])
    {
          return [MSGraphSubjectRightsRequestType delete];
    }
    else if([self isEqualToString:@"access"])
    {
          return [MSGraphSubjectRightsRequestType access];
    }
    else if([self isEqualToString:@"tagForAction"])
    {
          return [MSGraphSubjectRightsRequestType tagForAction];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphSubjectRightsRequestType unknownFutureValue];
    }
    else {
        return [MSGraphSubjectRightsRequestType UnknownEnumValue];
    }
}

@end
