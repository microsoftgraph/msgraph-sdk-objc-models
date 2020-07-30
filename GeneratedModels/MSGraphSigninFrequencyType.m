// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSigninFrequencyType.h"

@interface MSGraphSigninFrequencyType () {
    MSGraphSigninFrequencyTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSigninFrequencyTypeValue enumValue;
@end

@implementation MSGraphSigninFrequencyType

+ (MSGraphSigninFrequencyType*) days {
    static MSGraphSigninFrequencyType *_days;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _days = [[MSGraphSigninFrequencyType alloc] init];
        _days.enumValue = MSGraphSigninFrequencyTypeDays;
    });
    return _days;
}
+ (MSGraphSigninFrequencyType*) hours {
    static MSGraphSigninFrequencyType *_hours;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hours = [[MSGraphSigninFrequencyType alloc] init];
        _hours.enumValue = MSGraphSigninFrequencyTypeHours;
    });
    return _hours;
}

+ (MSGraphSigninFrequencyType*) UnknownEnumValue {
    static MSGraphSigninFrequencyType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSigninFrequencyType alloc] init];
        _unknownValue.enumValue = MSGraphSigninFrequencyTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSigninFrequencyType*) signinFrequencyTypeWithEnumValue:(MSGraphSigninFrequencyTypeValue)val {

    switch(val)
    {
        case MSGraphSigninFrequencyTypeDays:
            return [MSGraphSigninFrequencyType days];
        case MSGraphSigninFrequencyTypeHours:
            return [MSGraphSigninFrequencyType hours];
        case MSGraphSigninFrequencyTypeEndOfEnum:
        default:
            return [MSGraphSigninFrequencyType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSigninFrequencyTypeDays:
            return @"days";
        case MSGraphSigninFrequencyTypeHours:
            return @"hours";
        case MSGraphSigninFrequencyTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSigninFrequencyTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSigninFrequencyType)

- (MSGraphSigninFrequencyType*) toMSGraphSigninFrequencyType{

    if([self isEqualToString:@"days"])
    {
          return [MSGraphSigninFrequencyType days];
    }
    else if([self isEqualToString:@"hours"])
    {
          return [MSGraphSigninFrequencyType hours];
    }
    else {
        return [MSGraphSigninFrequencyType UnknownEnumValue];
    }
}

@end
