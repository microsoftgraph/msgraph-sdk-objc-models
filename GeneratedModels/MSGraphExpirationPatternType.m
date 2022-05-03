// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExpirationPatternType.h"

@interface MSGraphExpirationPatternType () {
    MSGraphExpirationPatternTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExpirationPatternTypeValue enumValue;
@end

@implementation MSGraphExpirationPatternType

+ (MSGraphExpirationPatternType*) notSpecified {
    static MSGraphExpirationPatternType *_notSpecified;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notSpecified = [[MSGraphExpirationPatternType alloc] init];
        _notSpecified.enumValue = MSGraphExpirationPatternTypeNotSpecified;
    });
    return _notSpecified;
}
+ (MSGraphExpirationPatternType*) noExpiration {
    static MSGraphExpirationPatternType *_noExpiration;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _noExpiration = [[MSGraphExpirationPatternType alloc] init];
        _noExpiration.enumValue = MSGraphExpirationPatternTypeNoExpiration;
    });
    return _noExpiration;
}
+ (MSGraphExpirationPatternType*) afterDateTime {
    static MSGraphExpirationPatternType *_afterDateTime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _afterDateTime = [[MSGraphExpirationPatternType alloc] init];
        _afterDateTime.enumValue = MSGraphExpirationPatternTypeAfterDateTime;
    });
    return _afterDateTime;
}
+ (MSGraphExpirationPatternType*) afterDuration {
    static MSGraphExpirationPatternType *_afterDuration;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _afterDuration = [[MSGraphExpirationPatternType alloc] init];
        _afterDuration.enumValue = MSGraphExpirationPatternTypeAfterDuration;
    });
    return _afterDuration;
}

+ (MSGraphExpirationPatternType*) UnknownEnumValue {
    static MSGraphExpirationPatternType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExpirationPatternType alloc] init];
        _unknownValue.enumValue = MSGraphExpirationPatternTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExpirationPatternType*) expirationPatternTypeWithEnumValue:(MSGraphExpirationPatternTypeValue)val {

    switch(val)
    {
        case MSGraphExpirationPatternTypeNotSpecified:
            return [MSGraphExpirationPatternType notSpecified];
        case MSGraphExpirationPatternTypeNoExpiration:
            return [MSGraphExpirationPatternType noExpiration];
        case MSGraphExpirationPatternTypeAfterDateTime:
            return [MSGraphExpirationPatternType afterDateTime];
        case MSGraphExpirationPatternTypeAfterDuration:
            return [MSGraphExpirationPatternType afterDuration];
        case MSGraphExpirationPatternTypeEndOfEnum:
        default:
            return [MSGraphExpirationPatternType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExpirationPatternTypeNotSpecified:
            return @"notSpecified";
        case MSGraphExpirationPatternTypeNoExpiration:
            return @"noExpiration";
        case MSGraphExpirationPatternTypeAfterDateTime:
            return @"afterDateTime";
        case MSGraphExpirationPatternTypeAfterDuration:
            return @"afterDuration";
        case MSGraphExpirationPatternTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExpirationPatternTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExpirationPatternType)

- (MSGraphExpirationPatternType*) toMSGraphExpirationPatternType{

    if([self isEqualToString:@"notSpecified"])
    {
          return [MSGraphExpirationPatternType notSpecified];
    }
    else if([self isEqualToString:@"noExpiration"])
    {
          return [MSGraphExpirationPatternType noExpiration];
    }
    else if([self isEqualToString:@"afterDateTime"])
    {
          return [MSGraphExpirationPatternType afterDateTime];
    }
    else if([self isEqualToString:@"afterDuration"])
    {
          return [MSGraphExpirationPatternType afterDuration];
    }
    else {
        return [MSGraphExpirationPatternType UnknownEnumValue];
    }
}

@end
