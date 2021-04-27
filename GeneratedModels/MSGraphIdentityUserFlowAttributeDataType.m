// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphIdentityUserFlowAttributeDataType.h"

@interface MSGraphIdentityUserFlowAttributeDataType () {
    MSGraphIdentityUserFlowAttributeDataTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphIdentityUserFlowAttributeDataTypeValue enumValue;
@end

@implementation MSGraphIdentityUserFlowAttributeDataType

+ (MSGraphIdentityUserFlowAttributeDataType*) string {
    static MSGraphIdentityUserFlowAttributeDataType *_string;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _string = [[MSGraphIdentityUserFlowAttributeDataType alloc] init];
        _string.enumValue = MSGraphIdentityUserFlowAttributeDataTypeString;
    });
    return _string;
}
+ (MSGraphIdentityUserFlowAttributeDataType*) boolean {
    static MSGraphIdentityUserFlowAttributeDataType *_boolean;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _boolean = [[MSGraphIdentityUserFlowAttributeDataType alloc] init];
        _boolean.enumValue = MSGraphIdentityUserFlowAttributeDataTypeBoolean;
    });
    return _boolean;
}
+ (MSGraphIdentityUserFlowAttributeDataType*) int64 {
    static MSGraphIdentityUserFlowAttributeDataType *_int64;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _int64 = [[MSGraphIdentityUserFlowAttributeDataType alloc] init];
        _int64.enumValue = MSGraphIdentityUserFlowAttributeDataTypeInt64;
    });
    return _int64;
}
+ (MSGraphIdentityUserFlowAttributeDataType*) stringCollection {
    static MSGraphIdentityUserFlowAttributeDataType *_stringCollection;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stringCollection = [[MSGraphIdentityUserFlowAttributeDataType alloc] init];
        _stringCollection.enumValue = MSGraphIdentityUserFlowAttributeDataTypeStringCollection;
    });
    return _stringCollection;
}
+ (MSGraphIdentityUserFlowAttributeDataType*) dateTime {
    static MSGraphIdentityUserFlowAttributeDataType *_dateTime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dateTime = [[MSGraphIdentityUserFlowAttributeDataType alloc] init];
        _dateTime.enumValue = MSGraphIdentityUserFlowAttributeDataTypeDateTime;
    });
    return _dateTime;
}
+ (MSGraphIdentityUserFlowAttributeDataType*) unknownFutureValue {
    static MSGraphIdentityUserFlowAttributeDataType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphIdentityUserFlowAttributeDataType alloc] init];
        _unknownFutureValue.enumValue = MSGraphIdentityUserFlowAttributeDataTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphIdentityUserFlowAttributeDataType*) UnknownEnumValue {
    static MSGraphIdentityUserFlowAttributeDataType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphIdentityUserFlowAttributeDataType alloc] init];
        _unknownValue.enumValue = MSGraphIdentityUserFlowAttributeDataTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphIdentityUserFlowAttributeDataType*) identityUserFlowAttributeDataTypeWithEnumValue:(MSGraphIdentityUserFlowAttributeDataTypeValue)val {

    switch(val)
    {
        case MSGraphIdentityUserFlowAttributeDataTypeString:
            return [MSGraphIdentityUserFlowAttributeDataType string];
        case MSGraphIdentityUserFlowAttributeDataTypeBoolean:
            return [MSGraphIdentityUserFlowAttributeDataType boolean];
        case MSGraphIdentityUserFlowAttributeDataTypeInt64:
            return [MSGraphIdentityUserFlowAttributeDataType int64];
        case MSGraphIdentityUserFlowAttributeDataTypeStringCollection:
            return [MSGraphIdentityUserFlowAttributeDataType stringCollection];
        case MSGraphIdentityUserFlowAttributeDataTypeDateTime:
            return [MSGraphIdentityUserFlowAttributeDataType dateTime];
        case MSGraphIdentityUserFlowAttributeDataTypeUnknownFutureValue:
            return [MSGraphIdentityUserFlowAttributeDataType unknownFutureValue];
        case MSGraphIdentityUserFlowAttributeDataTypeEndOfEnum:
        default:
            return [MSGraphIdentityUserFlowAttributeDataType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphIdentityUserFlowAttributeDataTypeString:
            return @"string";
        case MSGraphIdentityUserFlowAttributeDataTypeBoolean:
            return @"boolean";
        case MSGraphIdentityUserFlowAttributeDataTypeInt64:
            return @"int64";
        case MSGraphIdentityUserFlowAttributeDataTypeStringCollection:
            return @"stringCollection";
        case MSGraphIdentityUserFlowAttributeDataTypeDateTime:
            return @"dateTime";
        case MSGraphIdentityUserFlowAttributeDataTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphIdentityUserFlowAttributeDataTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphIdentityUserFlowAttributeDataTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphIdentityUserFlowAttributeDataType)

- (MSGraphIdentityUserFlowAttributeDataType*) toMSGraphIdentityUserFlowAttributeDataType{

    if([self isEqualToString:@"string"])
    {
          return [MSGraphIdentityUserFlowAttributeDataType string];
    }
    else if([self isEqualToString:@"boolean"])
    {
          return [MSGraphIdentityUserFlowAttributeDataType boolean];
    }
    else if([self isEqualToString:@"int64"])
    {
          return [MSGraphIdentityUserFlowAttributeDataType int64];
    }
    else if([self isEqualToString:@"stringCollection"])
    {
          return [MSGraphIdentityUserFlowAttributeDataType stringCollection];
    }
    else if([self isEqualToString:@"dateTime"])
    {
          return [MSGraphIdentityUserFlowAttributeDataType dateTime];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphIdentityUserFlowAttributeDataType unknownFutureValue];
    }
    else {
        return [MSGraphIdentityUserFlowAttributeDataType UnknownEnumValue];
    }
}

@end
