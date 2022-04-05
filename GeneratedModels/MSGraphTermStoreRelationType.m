// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTermStoreRelationType.h"

@interface MSGraphTermStoreRelationType () {
    MSGraphTermStoreRelationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTermStoreRelationTypeValue enumValue;
@end

@implementation MSGraphTermStoreRelationType

+ (MSGraphTermStoreRelationType*) pin {
    static MSGraphTermStoreRelationType *_pin;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pin = [[MSGraphTermStoreRelationType alloc] init];
        _pin.enumValue = MSGraphTermStoreRelationTypePin;
    });
    return _pin;
}
+ (MSGraphTermStoreRelationType*) reuse {
    static MSGraphTermStoreRelationType *_reuse;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reuse = [[MSGraphTermStoreRelationType alloc] init];
        _reuse.enumValue = MSGraphTermStoreRelationTypeReuse;
    });
    return _reuse;
}
+ (MSGraphTermStoreRelationType*) unknownFutureValue {
    static MSGraphTermStoreRelationType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTermStoreRelationType alloc] init];
        _unknownFutureValue.enumValue = MSGraphTermStoreRelationTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTermStoreRelationType*) UnknownEnumValue {
    static MSGraphTermStoreRelationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTermStoreRelationType alloc] init];
        _unknownValue.enumValue = MSGraphTermStoreRelationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTermStoreRelationType*) relationTypeWithEnumValue:(MSGraphTermStoreRelationTypeValue)val {

    switch(val)
    {
        case MSGraphTermStoreRelationTypePin:
            return [MSGraphTermStoreRelationType pin];
        case MSGraphTermStoreRelationTypeReuse:
            return [MSGraphTermStoreRelationType reuse];
        case MSGraphTermStoreRelationTypeUnknownFutureValue:
            return [MSGraphTermStoreRelationType unknownFutureValue];
        case MSGraphTermStoreRelationTypeEndOfEnum:
        default:
            return [MSGraphTermStoreRelationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTermStoreRelationTypePin:
            return @"pin";
        case MSGraphTermStoreRelationTypeReuse:
            return @"reuse";
        case MSGraphTermStoreRelationTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTermStoreRelationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTermStoreRelationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTermStoreRelationType)

- (MSGraphTermStoreRelationType*) toMSGraphTermStoreRelationType{

    if([self isEqualToString:@"pin"])
    {
          return [MSGraphTermStoreRelationType pin];
    }
    else if([self isEqualToString:@"reuse"])
    {
          return [MSGraphTermStoreRelationType reuse];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTermStoreRelationType unknownFutureValue];
    }
    else {
        return [MSGraphTermStoreRelationType UnknownEnumValue];
    }
}

@end
