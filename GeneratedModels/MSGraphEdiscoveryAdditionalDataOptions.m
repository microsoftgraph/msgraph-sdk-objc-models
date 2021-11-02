// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoveryAdditionalDataOptions.h"

@interface MSGraphEdiscoveryAdditionalDataOptions () {
    MSGraphEdiscoveryAdditionalDataOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoveryAdditionalDataOptionsValue enumValue;
@end

@implementation MSGraphEdiscoveryAdditionalDataOptions

+ (MSGraphEdiscoveryAdditionalDataOptions*) allVersions {
    static MSGraphEdiscoveryAdditionalDataOptions *_allVersions;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allVersions = [[MSGraphEdiscoveryAdditionalDataOptions alloc] init];
        _allVersions.enumValue = MSGraphEdiscoveryAdditionalDataOptionsAllVersions;
    });
    return _allVersions;
}
+ (MSGraphEdiscoveryAdditionalDataOptions*) linkedFiles {
    static MSGraphEdiscoveryAdditionalDataOptions *_linkedFiles;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _linkedFiles = [[MSGraphEdiscoveryAdditionalDataOptions alloc] init];
        _linkedFiles.enumValue = MSGraphEdiscoveryAdditionalDataOptionsLinkedFiles;
    });
    return _linkedFiles;
}
+ (MSGraphEdiscoveryAdditionalDataOptions*) unknownFutureValue {
    static MSGraphEdiscoveryAdditionalDataOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEdiscoveryAdditionalDataOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphEdiscoveryAdditionalDataOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEdiscoveryAdditionalDataOptions*) UnknownEnumValue {
    static MSGraphEdiscoveryAdditionalDataOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoveryAdditionalDataOptions alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoveryAdditionalDataOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoveryAdditionalDataOptions*) additionalDataOptionsWithEnumValue:(MSGraphEdiscoveryAdditionalDataOptionsValue)val {

    switch(val)
    {
        case MSGraphEdiscoveryAdditionalDataOptionsAllVersions:
            return [MSGraphEdiscoveryAdditionalDataOptions allVersions];
        case MSGraphEdiscoveryAdditionalDataOptionsLinkedFiles:
            return [MSGraphEdiscoveryAdditionalDataOptions linkedFiles];
        case MSGraphEdiscoveryAdditionalDataOptionsUnknownFutureValue:
            return [MSGraphEdiscoveryAdditionalDataOptions unknownFutureValue];
        case MSGraphEdiscoveryAdditionalDataOptionsEndOfEnum:
        default:
            return [MSGraphEdiscoveryAdditionalDataOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoveryAdditionalDataOptionsAllVersions:
            return @"allVersions";
        case MSGraphEdiscoveryAdditionalDataOptionsLinkedFiles:
            return @"linkedFiles";
        case MSGraphEdiscoveryAdditionalDataOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEdiscoveryAdditionalDataOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoveryAdditionalDataOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoveryAdditionalDataOptions)

- (MSGraphEdiscoveryAdditionalDataOptions*) toMSGraphEdiscoveryAdditionalDataOptions{

    if([self isEqualToString:@"allVersions"])
    {
          return [MSGraphEdiscoveryAdditionalDataOptions allVersions];
    }
    else if([self isEqualToString:@"linkedFiles"])
    {
          return [MSGraphEdiscoveryAdditionalDataOptions linkedFiles];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEdiscoveryAdditionalDataOptions unknownFutureValue];
    }
    else {
        return [MSGraphEdiscoveryAdditionalDataOptions UnknownEnumValue];
    }
}

@end
