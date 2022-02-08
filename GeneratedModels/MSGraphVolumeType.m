// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphVolumeType.h"

@interface MSGraphVolumeType () {
    MSGraphVolumeTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphVolumeTypeValue enumValue;
@end

@implementation MSGraphVolumeType

+ (MSGraphVolumeType*) operatingSystemVolume {
    static MSGraphVolumeType *_operatingSystemVolume;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _operatingSystemVolume = [[MSGraphVolumeType alloc] init];
        _operatingSystemVolume.enumValue = MSGraphVolumeTypeOperatingSystemVolume;
    });
    return _operatingSystemVolume;
}
+ (MSGraphVolumeType*) fixedDataVolume {
    static MSGraphVolumeType *_fixedDataVolume;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fixedDataVolume = [[MSGraphVolumeType alloc] init];
        _fixedDataVolume.enumValue = MSGraphVolumeTypeFixedDataVolume;
    });
    return _fixedDataVolume;
}
+ (MSGraphVolumeType*) removableDataVolume {
    static MSGraphVolumeType *_removableDataVolume;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _removableDataVolume = [[MSGraphVolumeType alloc] init];
        _removableDataVolume.enumValue = MSGraphVolumeTypeRemovableDataVolume;
    });
    return _removableDataVolume;
}
+ (MSGraphVolumeType*) unknownFutureValue {
    static MSGraphVolumeType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphVolumeType alloc] init];
        _unknownFutureValue.enumValue = MSGraphVolumeTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphVolumeType*) UnknownEnumValue {
    static MSGraphVolumeType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphVolumeType alloc] init];
        _unknownValue.enumValue = MSGraphVolumeTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphVolumeType*) volumeTypeWithEnumValue:(MSGraphVolumeTypeValue)val {

    switch(val)
    {
        case MSGraphVolumeTypeOperatingSystemVolume:
            return [MSGraphVolumeType operatingSystemVolume];
        case MSGraphVolumeTypeFixedDataVolume:
            return [MSGraphVolumeType fixedDataVolume];
        case MSGraphVolumeTypeRemovableDataVolume:
            return [MSGraphVolumeType removableDataVolume];
        case MSGraphVolumeTypeUnknownFutureValue:
            return [MSGraphVolumeType unknownFutureValue];
        case MSGraphVolumeTypeEndOfEnum:
        default:
            return [MSGraphVolumeType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphVolumeTypeOperatingSystemVolume:
            return @"operatingSystemVolume";
        case MSGraphVolumeTypeFixedDataVolume:
            return @"fixedDataVolume";
        case MSGraphVolumeTypeRemovableDataVolume:
            return @"removableDataVolume";
        case MSGraphVolumeTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphVolumeTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphVolumeTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphVolumeType)

- (MSGraphVolumeType*) toMSGraphVolumeType{

    if([self isEqualToString:@"operatingSystemVolume"])
    {
          return [MSGraphVolumeType operatingSystemVolume];
    }
    else if([self isEqualToString:@"fixedDataVolume"])
    {
          return [MSGraphVolumeType fixedDataVolume];
    }
    else if([self isEqualToString:@"removableDataVolume"])
    {
          return [MSGraphVolumeType removableDataVolume];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphVolumeType unknownFutureValue];
    }
    else {
        return [MSGraphVolumeType UnknownEnumValue];
    }
}

@end
