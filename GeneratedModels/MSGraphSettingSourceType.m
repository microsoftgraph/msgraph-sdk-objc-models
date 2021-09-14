// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSettingSourceType.h"

@interface MSGraphSettingSourceType () {
    MSGraphSettingSourceTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSettingSourceTypeValue enumValue;
@end

@implementation MSGraphSettingSourceType

+ (MSGraphSettingSourceType*) deviceConfiguration {
    static MSGraphSettingSourceType *_deviceConfiguration;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceConfiguration = [[MSGraphSettingSourceType alloc] init];
        _deviceConfiguration.enumValue = MSGraphSettingSourceTypeDeviceConfiguration;
    });
    return _deviceConfiguration;
}
+ (MSGraphSettingSourceType*) deviceIntent {
    static MSGraphSettingSourceType *_deviceIntent;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceIntent = [[MSGraphSettingSourceType alloc] init];
        _deviceIntent.enumValue = MSGraphSettingSourceTypeDeviceIntent;
    });
    return _deviceIntent;
}

+ (MSGraphSettingSourceType*) UnknownEnumValue {
    static MSGraphSettingSourceType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSettingSourceType alloc] init];
        _unknownValue.enumValue = MSGraphSettingSourceTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSettingSourceType*) settingSourceTypeWithEnumValue:(MSGraphSettingSourceTypeValue)val {

    switch(val)
    {
        case MSGraphSettingSourceTypeDeviceConfiguration:
            return [MSGraphSettingSourceType deviceConfiguration];
        case MSGraphSettingSourceTypeDeviceIntent:
            return [MSGraphSettingSourceType deviceIntent];
        case MSGraphSettingSourceTypeEndOfEnum:
        default:
            return [MSGraphSettingSourceType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSettingSourceTypeDeviceConfiguration:
            return @"deviceConfiguration";
        case MSGraphSettingSourceTypeDeviceIntent:
            return @"deviceIntent";
        case MSGraphSettingSourceTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSettingSourceTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSettingSourceType)

- (MSGraphSettingSourceType*) toMSGraphSettingSourceType{

    if([self isEqualToString:@"deviceConfiguration"])
    {
          return [MSGraphSettingSourceType deviceConfiguration];
    }
    else if([self isEqualToString:@"deviceIntent"])
    {
          return [MSGraphSettingSourceType deviceIntent];
    }
    else {
        return [MSGraphSettingSourceType UnknownEnumValue];
    }
}

@end
