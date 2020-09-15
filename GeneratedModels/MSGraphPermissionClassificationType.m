// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPermissionClassificationType.h"

@interface MSGraphPermissionClassificationType () {
    MSGraphPermissionClassificationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPermissionClassificationTypeValue enumValue;
@end

@implementation MSGraphPermissionClassificationType

+ (MSGraphPermissionClassificationType*) low {
    static MSGraphPermissionClassificationType *_low;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _low = [[MSGraphPermissionClassificationType alloc] init];
        _low.enumValue = MSGraphPermissionClassificationTypeLow;
    });
    return _low;
}
+ (MSGraphPermissionClassificationType*) medium {
    static MSGraphPermissionClassificationType *_medium;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _medium = [[MSGraphPermissionClassificationType alloc] init];
        _medium.enumValue = MSGraphPermissionClassificationTypeMedium;
    });
    return _medium;
}
+ (MSGraphPermissionClassificationType*) high {
    static MSGraphPermissionClassificationType *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphPermissionClassificationType alloc] init];
        _high.enumValue = MSGraphPermissionClassificationTypeHigh;
    });
    return _high;
}
+ (MSGraphPermissionClassificationType*) unknownFutureValue {
    static MSGraphPermissionClassificationType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPermissionClassificationType alloc] init];
        _unknownFutureValue.enumValue = MSGraphPermissionClassificationTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphPermissionClassificationType*) UnknownEnumValue {
    static MSGraphPermissionClassificationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPermissionClassificationType alloc] init];
        _unknownValue.enumValue = MSGraphPermissionClassificationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPermissionClassificationType*) permissionClassificationTypeWithEnumValue:(MSGraphPermissionClassificationTypeValue)val {

    switch(val)
    {
        case MSGraphPermissionClassificationTypeLow:
            return [MSGraphPermissionClassificationType low];
        case MSGraphPermissionClassificationTypeMedium:
            return [MSGraphPermissionClassificationType medium];
        case MSGraphPermissionClassificationTypeHigh:
            return [MSGraphPermissionClassificationType high];
        case MSGraphPermissionClassificationTypeUnknownFutureValue:
            return [MSGraphPermissionClassificationType unknownFutureValue];
        case MSGraphPermissionClassificationTypeEndOfEnum:
        default:
            return [MSGraphPermissionClassificationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPermissionClassificationTypeLow:
            return @"low";
        case MSGraphPermissionClassificationTypeMedium:
            return @"medium";
        case MSGraphPermissionClassificationTypeHigh:
            return @"high";
        case MSGraphPermissionClassificationTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPermissionClassificationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPermissionClassificationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPermissionClassificationType)

- (MSGraphPermissionClassificationType*) toMSGraphPermissionClassificationType{

    if([self isEqualToString:@"low"])
    {
          return [MSGraphPermissionClassificationType low];
    }
    else if([self isEqualToString:@"medium"])
    {
          return [MSGraphPermissionClassificationType medium];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphPermissionClassificationType high];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPermissionClassificationType unknownFutureValue];
    }
    else {
        return [MSGraphPermissionClassificationType UnknownEnumValue];
    }
}

@end
