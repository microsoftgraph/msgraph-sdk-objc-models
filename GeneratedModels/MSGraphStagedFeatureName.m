// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphStagedFeatureName.h"

@interface MSGraphStagedFeatureName () {
    MSGraphStagedFeatureNameValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphStagedFeatureNameValue enumValue;
@end

@implementation MSGraphStagedFeatureName

+ (MSGraphStagedFeatureName*) passthroughAuthentication {
    static MSGraphStagedFeatureName *_passthroughAuthentication;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _passthroughAuthentication = [[MSGraphStagedFeatureName alloc] init];
        _passthroughAuthentication.enumValue = MSGraphStagedFeatureNamePassthroughAuthentication;
    });
    return _passthroughAuthentication;
}
+ (MSGraphStagedFeatureName*) seamlessSso {
    static MSGraphStagedFeatureName *_seamlessSso;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _seamlessSso = [[MSGraphStagedFeatureName alloc] init];
        _seamlessSso.enumValue = MSGraphStagedFeatureNameSeamlessSso;
    });
    return _seamlessSso;
}
+ (MSGraphStagedFeatureName*) passwordHashSync {
    static MSGraphStagedFeatureName *_passwordHashSync;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _passwordHashSync = [[MSGraphStagedFeatureName alloc] init];
        _passwordHashSync.enumValue = MSGraphStagedFeatureNamePasswordHashSync;
    });
    return _passwordHashSync;
}
+ (MSGraphStagedFeatureName*) emailAsAlternateId {
    static MSGraphStagedFeatureName *_emailAsAlternateId;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _emailAsAlternateId = [[MSGraphStagedFeatureName alloc] init];
        _emailAsAlternateId.enumValue = MSGraphStagedFeatureNameEmailAsAlternateId;
    });
    return _emailAsAlternateId;
}
+ (MSGraphStagedFeatureName*) unknownFutureValue {
    static MSGraphStagedFeatureName *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphStagedFeatureName alloc] init];
        _unknownFutureValue.enumValue = MSGraphStagedFeatureNameUnknownFutureValue;
    });
    return _unknownFutureValue;
}
+ (MSGraphStagedFeatureName*) certificateBasedAuthentication {
    static MSGraphStagedFeatureName *_certificateBasedAuthentication;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _certificateBasedAuthentication = [[MSGraphStagedFeatureName alloc] init];
        _certificateBasedAuthentication.enumValue = MSGraphStagedFeatureNameCertificateBasedAuthentication;
    });
    return _certificateBasedAuthentication;
}
+ (MSGraphStagedFeatureName*) multiFactorAuthentication {
    static MSGraphStagedFeatureName *_multiFactorAuthentication;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _multiFactorAuthentication = [[MSGraphStagedFeatureName alloc] init];
        _multiFactorAuthentication.enumValue = MSGraphStagedFeatureNameMultiFactorAuthentication;
    });
    return _multiFactorAuthentication;
}

+ (MSGraphStagedFeatureName*) UnknownEnumValue {
    static MSGraphStagedFeatureName *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphStagedFeatureName alloc] init];
        _unknownValue.enumValue = MSGraphStagedFeatureNameEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphStagedFeatureName*) stagedFeatureNameWithEnumValue:(MSGraphStagedFeatureNameValue)val {

    switch(val)
    {
        case MSGraphStagedFeatureNamePassthroughAuthentication:
            return [MSGraphStagedFeatureName passthroughAuthentication];
        case MSGraphStagedFeatureNameSeamlessSso:
            return [MSGraphStagedFeatureName seamlessSso];
        case MSGraphStagedFeatureNamePasswordHashSync:
            return [MSGraphStagedFeatureName passwordHashSync];
        case MSGraphStagedFeatureNameEmailAsAlternateId:
            return [MSGraphStagedFeatureName emailAsAlternateId];
        case MSGraphStagedFeatureNameUnknownFutureValue:
            return [MSGraphStagedFeatureName unknownFutureValue];
        case MSGraphStagedFeatureNameCertificateBasedAuthentication:
            return [MSGraphStagedFeatureName certificateBasedAuthentication];
        case MSGraphStagedFeatureNameMultiFactorAuthentication:
            return [MSGraphStagedFeatureName multiFactorAuthentication];
        case MSGraphStagedFeatureNameEndOfEnum:
        default:
            return [MSGraphStagedFeatureName UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphStagedFeatureNamePassthroughAuthentication:
            return @"passthroughAuthentication";
        case MSGraphStagedFeatureNameSeamlessSso:
            return @"seamlessSso";
        case MSGraphStagedFeatureNamePasswordHashSync:
            return @"passwordHashSync";
        case MSGraphStagedFeatureNameEmailAsAlternateId:
            return @"emailAsAlternateId";
        case MSGraphStagedFeatureNameUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphStagedFeatureNameCertificateBasedAuthentication:
            return @"certificateBasedAuthentication";
        case MSGraphStagedFeatureNameMultiFactorAuthentication:
            return @"multiFactorAuthentication";
        case MSGraphStagedFeatureNameEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphStagedFeatureNameValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphStagedFeatureName)

- (MSGraphStagedFeatureName*) toMSGraphStagedFeatureName{

    if([self isEqualToString:@"passthroughAuthentication"])
    {
          return [MSGraphStagedFeatureName passthroughAuthentication];
    }
    else if([self isEqualToString:@"seamlessSso"])
    {
          return [MSGraphStagedFeatureName seamlessSso];
    }
    else if([self isEqualToString:@"passwordHashSync"])
    {
          return [MSGraphStagedFeatureName passwordHashSync];
    }
    else if([self isEqualToString:@"emailAsAlternateId"])
    {
          return [MSGraphStagedFeatureName emailAsAlternateId];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphStagedFeatureName unknownFutureValue];
    }
    else if([self isEqualToString:@"certificateBasedAuthentication"])
    {
          return [MSGraphStagedFeatureName certificateBasedAuthentication];
    }
    else if([self isEqualToString:@"multiFactorAuthentication"])
    {
          return [MSGraphStagedFeatureName multiFactorAuthentication];
    }
    else {
        return [MSGraphStagedFeatureName UnknownEnumValue];
    }
}

@end
