// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCloudAppSecuritySessionControlType.h"

@interface MSGraphCloudAppSecuritySessionControlType () {
    MSGraphCloudAppSecuritySessionControlTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCloudAppSecuritySessionControlTypeValue enumValue;
@end

@implementation MSGraphCloudAppSecuritySessionControlType

+ (MSGraphCloudAppSecuritySessionControlType*) mcasConfigured {
    static MSGraphCloudAppSecuritySessionControlType *_mcasConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mcasConfigured = [[MSGraphCloudAppSecuritySessionControlType alloc] init];
        _mcasConfigured.enumValue = MSGraphCloudAppSecuritySessionControlTypeMcasConfigured;
    });
    return _mcasConfigured;
}
+ (MSGraphCloudAppSecuritySessionControlType*) monitorOnly {
    static MSGraphCloudAppSecuritySessionControlType *_monitorOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _monitorOnly = [[MSGraphCloudAppSecuritySessionControlType alloc] init];
        _monitorOnly.enumValue = MSGraphCloudAppSecuritySessionControlTypeMonitorOnly;
    });
    return _monitorOnly;
}
+ (MSGraphCloudAppSecuritySessionControlType*) blockDownloads {
    static MSGraphCloudAppSecuritySessionControlType *_blockDownloads;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blockDownloads = [[MSGraphCloudAppSecuritySessionControlType alloc] init];
        _blockDownloads.enumValue = MSGraphCloudAppSecuritySessionControlTypeBlockDownloads;
    });
    return _blockDownloads;
}
+ (MSGraphCloudAppSecuritySessionControlType*) unknownFutureValue {
    static MSGraphCloudAppSecuritySessionControlType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCloudAppSecuritySessionControlType alloc] init];
        _unknownFutureValue.enumValue = MSGraphCloudAppSecuritySessionControlTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCloudAppSecuritySessionControlType*) UnknownEnumValue {
    static MSGraphCloudAppSecuritySessionControlType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCloudAppSecuritySessionControlType alloc] init];
        _unknownValue.enumValue = MSGraphCloudAppSecuritySessionControlTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCloudAppSecuritySessionControlType*) cloudAppSecuritySessionControlTypeWithEnumValue:(MSGraphCloudAppSecuritySessionControlTypeValue)val {

    switch(val)
    {
        case MSGraphCloudAppSecuritySessionControlTypeMcasConfigured:
            return [MSGraphCloudAppSecuritySessionControlType mcasConfigured];
        case MSGraphCloudAppSecuritySessionControlTypeMonitorOnly:
            return [MSGraphCloudAppSecuritySessionControlType monitorOnly];
        case MSGraphCloudAppSecuritySessionControlTypeBlockDownloads:
            return [MSGraphCloudAppSecuritySessionControlType blockDownloads];
        case MSGraphCloudAppSecuritySessionControlTypeUnknownFutureValue:
            return [MSGraphCloudAppSecuritySessionControlType unknownFutureValue];
        case MSGraphCloudAppSecuritySessionControlTypeEndOfEnum:
        default:
            return [MSGraphCloudAppSecuritySessionControlType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCloudAppSecuritySessionControlTypeMcasConfigured:
            return @"mcasConfigured";
        case MSGraphCloudAppSecuritySessionControlTypeMonitorOnly:
            return @"monitorOnly";
        case MSGraphCloudAppSecuritySessionControlTypeBlockDownloads:
            return @"blockDownloads";
        case MSGraphCloudAppSecuritySessionControlTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCloudAppSecuritySessionControlTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCloudAppSecuritySessionControlTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCloudAppSecuritySessionControlType)

- (MSGraphCloudAppSecuritySessionControlType*) toMSGraphCloudAppSecuritySessionControlType{

    if([self isEqualToString:@"mcasConfigured"])
    {
          return [MSGraphCloudAppSecuritySessionControlType mcasConfigured];
    }
    else if([self isEqualToString:@"monitorOnly"])
    {
          return [MSGraphCloudAppSecuritySessionControlType monitorOnly];
    }
    else if([self isEqualToString:@"blockDownloads"])
    {
          return [MSGraphCloudAppSecuritySessionControlType blockDownloads];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCloudAppSecuritySessionControlType unknownFutureValue];
    }
    else {
        return [MSGraphCloudAppSecuritySessionControlType UnknownEnumValue];
    }
}

@end
