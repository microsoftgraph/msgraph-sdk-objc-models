// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsPropertyType.h"

@interface MSGraphExternalConnectorsPropertyType () {
    MSGraphExternalConnectorsPropertyTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExternalConnectorsPropertyTypeValue enumValue;
@end

@implementation MSGraphExternalConnectorsPropertyType

+ (MSGraphExternalConnectorsPropertyType*) string {
    static MSGraphExternalConnectorsPropertyType *_string;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _string = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _string.enumValue = MSGraphExternalConnectorsPropertyTypeString;
    });
    return _string;
}
+ (MSGraphExternalConnectorsPropertyType*) int64 {
    static MSGraphExternalConnectorsPropertyType *_int64;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _int64 = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _int64.enumValue = MSGraphExternalConnectorsPropertyTypeInt64;
    });
    return _int64;
}
+ (MSGraphExternalConnectorsPropertyType*) double {
    static MSGraphExternalConnectorsPropertyType *_double;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _double = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _double.enumValue = MSGraphExternalConnectorsPropertyTypeDouble;
    });
    return _double;
}
+ (MSGraphExternalConnectorsPropertyType*) dateTime {
    static MSGraphExternalConnectorsPropertyType *_dateTime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dateTime = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _dateTime.enumValue = MSGraphExternalConnectorsPropertyTypeDateTime;
    });
    return _dateTime;
}
+ (MSGraphExternalConnectorsPropertyType*) boolean {
    static MSGraphExternalConnectorsPropertyType *_boolean;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _boolean = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _boolean.enumValue = MSGraphExternalConnectorsPropertyTypeBoolean;
    });
    return _boolean;
}
+ (MSGraphExternalConnectorsPropertyType*) stringCollection {
    static MSGraphExternalConnectorsPropertyType *_stringCollection;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stringCollection = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _stringCollection.enumValue = MSGraphExternalConnectorsPropertyTypeStringCollection;
    });
    return _stringCollection;
}
+ (MSGraphExternalConnectorsPropertyType*) int64Collection {
    static MSGraphExternalConnectorsPropertyType *_int64Collection;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _int64Collection = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _int64Collection.enumValue = MSGraphExternalConnectorsPropertyTypeInt64Collection;
    });
    return _int64Collection;
}
+ (MSGraphExternalConnectorsPropertyType*) doubleCollection {
    static MSGraphExternalConnectorsPropertyType *_doubleCollection;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _doubleCollection = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _doubleCollection.enumValue = MSGraphExternalConnectorsPropertyTypeDoubleCollection;
    });
    return _doubleCollection;
}
+ (MSGraphExternalConnectorsPropertyType*) dateTimeCollection {
    static MSGraphExternalConnectorsPropertyType *_dateTimeCollection;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _dateTimeCollection = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _dateTimeCollection.enumValue = MSGraphExternalConnectorsPropertyTypeDateTimeCollection;
    });
    return _dateTimeCollection;
}
+ (MSGraphExternalConnectorsPropertyType*) unknownFutureValue {
    static MSGraphExternalConnectorsPropertyType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _unknownFutureValue.enumValue = MSGraphExternalConnectorsPropertyTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphExternalConnectorsPropertyType*) UnknownEnumValue {
    static MSGraphExternalConnectorsPropertyType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExternalConnectorsPropertyType alloc] init];
        _unknownValue.enumValue = MSGraphExternalConnectorsPropertyTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExternalConnectorsPropertyType*) propertyTypeWithEnumValue:(MSGraphExternalConnectorsPropertyTypeValue)val {

    switch(val)
    {
        case MSGraphExternalConnectorsPropertyTypeString:
            return [MSGraphExternalConnectorsPropertyType string];
        case MSGraphExternalConnectorsPropertyTypeInt64:
            return [MSGraphExternalConnectorsPropertyType int64];
        case MSGraphExternalConnectorsPropertyTypeDouble:
            return [MSGraphExternalConnectorsPropertyType double];
        case MSGraphExternalConnectorsPropertyTypeDateTime:
            return [MSGraphExternalConnectorsPropertyType dateTime];
        case MSGraphExternalConnectorsPropertyTypeBoolean:
            return [MSGraphExternalConnectorsPropertyType boolean];
        case MSGraphExternalConnectorsPropertyTypeStringCollection:
            return [MSGraphExternalConnectorsPropertyType stringCollection];
        case MSGraphExternalConnectorsPropertyTypeInt64Collection:
            return [MSGraphExternalConnectorsPropertyType int64Collection];
        case MSGraphExternalConnectorsPropertyTypeDoubleCollection:
            return [MSGraphExternalConnectorsPropertyType doubleCollection];
        case MSGraphExternalConnectorsPropertyTypeDateTimeCollection:
            return [MSGraphExternalConnectorsPropertyType dateTimeCollection];
        case MSGraphExternalConnectorsPropertyTypeUnknownFutureValue:
            return [MSGraphExternalConnectorsPropertyType unknownFutureValue];
        case MSGraphExternalConnectorsPropertyTypeEndOfEnum:
        default:
            return [MSGraphExternalConnectorsPropertyType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExternalConnectorsPropertyTypeString:
            return @"string";
        case MSGraphExternalConnectorsPropertyTypeInt64:
            return @"int64";
        case MSGraphExternalConnectorsPropertyTypeDouble:
            return @"double";
        case MSGraphExternalConnectorsPropertyTypeDateTime:
            return @"dateTime";
        case MSGraphExternalConnectorsPropertyTypeBoolean:
            return @"boolean";
        case MSGraphExternalConnectorsPropertyTypeStringCollection:
            return @"stringCollection";
        case MSGraphExternalConnectorsPropertyTypeInt64Collection:
            return @"int64Collection";
        case MSGraphExternalConnectorsPropertyTypeDoubleCollection:
            return @"doubleCollection";
        case MSGraphExternalConnectorsPropertyTypeDateTimeCollection:
            return @"dateTimeCollection";
        case MSGraphExternalConnectorsPropertyTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphExternalConnectorsPropertyTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExternalConnectorsPropertyTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExternalConnectorsPropertyType)

- (MSGraphExternalConnectorsPropertyType*) toMSGraphExternalConnectorsPropertyType{

    if([self isEqualToString:@"string"])
    {
          return [MSGraphExternalConnectorsPropertyType string];
    }
    else if([self isEqualToString:@"int64"])
    {
          return [MSGraphExternalConnectorsPropertyType int64];
    }
    else if([self isEqualToString:@"double"])
    {
          return [MSGraphExternalConnectorsPropertyType double];
    }
    else if([self isEqualToString:@"dateTime"])
    {
          return [MSGraphExternalConnectorsPropertyType dateTime];
    }
    else if([self isEqualToString:@"boolean"])
    {
          return [MSGraphExternalConnectorsPropertyType boolean];
    }
    else if([self isEqualToString:@"stringCollection"])
    {
          return [MSGraphExternalConnectorsPropertyType stringCollection];
    }
    else if([self isEqualToString:@"int64Collection"])
    {
          return [MSGraphExternalConnectorsPropertyType int64Collection];
    }
    else if([self isEqualToString:@"doubleCollection"])
    {
          return [MSGraphExternalConnectorsPropertyType doubleCollection];
    }
    else if([self isEqualToString:@"dateTimeCollection"])
    {
          return [MSGraphExternalConnectorsPropertyType dateTimeCollection];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphExternalConnectorsPropertyType unknownFutureValue];
    }
    else {
        return [MSGraphExternalConnectorsPropertyType UnknownEnumValue];
    }
}

@end
