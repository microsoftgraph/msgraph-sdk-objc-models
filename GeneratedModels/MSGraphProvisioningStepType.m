// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphProvisioningStepType.h"

@interface MSGraphProvisioningStepType () {
    MSGraphProvisioningStepTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphProvisioningStepTypeValue enumValue;
@end

@implementation MSGraphProvisioningStepType

+ (MSGraphProvisioningStepType*) import {
    static MSGraphProvisioningStepType *_import;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _import = [[MSGraphProvisioningStepType alloc] init];
        _import.enumValue = MSGraphProvisioningStepTypeImport;
    });
    return _import;
}
+ (MSGraphProvisioningStepType*) scoping {
    static MSGraphProvisioningStepType *_scoping;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _scoping = [[MSGraphProvisioningStepType alloc] init];
        _scoping.enumValue = MSGraphProvisioningStepTypeScoping;
    });
    return _scoping;
}
+ (MSGraphProvisioningStepType*) matching {
    static MSGraphProvisioningStepType *_matching;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _matching = [[MSGraphProvisioningStepType alloc] init];
        _matching.enumValue = MSGraphProvisioningStepTypeMatching;
    });
    return _matching;
}
+ (MSGraphProvisioningStepType*) processing {
    static MSGraphProvisioningStepType *_processing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _processing = [[MSGraphProvisioningStepType alloc] init];
        _processing.enumValue = MSGraphProvisioningStepTypeProcessing;
    });
    return _processing;
}
+ (MSGraphProvisioningStepType*) referenceResolution {
    static MSGraphProvisioningStepType *_referenceResolution;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _referenceResolution = [[MSGraphProvisioningStepType alloc] init];
        _referenceResolution.enumValue = MSGraphProvisioningStepTypeReferenceResolution;
    });
    return _referenceResolution;
}
+ (MSGraphProvisioningStepType*) export {
    static MSGraphProvisioningStepType *_export;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _export = [[MSGraphProvisioningStepType alloc] init];
        _export.enumValue = MSGraphProvisioningStepTypeExport;
    });
    return _export;
}
+ (MSGraphProvisioningStepType*) unknownFutureValue {
    static MSGraphProvisioningStepType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphProvisioningStepType alloc] init];
        _unknownFutureValue.enumValue = MSGraphProvisioningStepTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphProvisioningStepType*) UnknownEnumValue {
    static MSGraphProvisioningStepType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphProvisioningStepType alloc] init];
        _unknownValue.enumValue = MSGraphProvisioningStepTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphProvisioningStepType*) provisioningStepTypeWithEnumValue:(MSGraphProvisioningStepTypeValue)val {

    switch(val)
    {
        case MSGraphProvisioningStepTypeImport:
            return [MSGraphProvisioningStepType import];
        case MSGraphProvisioningStepTypeScoping:
            return [MSGraphProvisioningStepType scoping];
        case MSGraphProvisioningStepTypeMatching:
            return [MSGraphProvisioningStepType matching];
        case MSGraphProvisioningStepTypeProcessing:
            return [MSGraphProvisioningStepType processing];
        case MSGraphProvisioningStepTypeReferenceResolution:
            return [MSGraphProvisioningStepType referenceResolution];
        case MSGraphProvisioningStepTypeExport:
            return [MSGraphProvisioningStepType export];
        case MSGraphProvisioningStepTypeUnknownFutureValue:
            return [MSGraphProvisioningStepType unknownFutureValue];
        case MSGraphProvisioningStepTypeEndOfEnum:
        default:
            return [MSGraphProvisioningStepType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphProvisioningStepTypeImport:
            return @"import";
        case MSGraphProvisioningStepTypeScoping:
            return @"scoping";
        case MSGraphProvisioningStepTypeMatching:
            return @"matching";
        case MSGraphProvisioningStepTypeProcessing:
            return @"processing";
        case MSGraphProvisioningStepTypeReferenceResolution:
            return @"referenceResolution";
        case MSGraphProvisioningStepTypeExport:
            return @"export";
        case MSGraphProvisioningStepTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphProvisioningStepTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphProvisioningStepTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphProvisioningStepType)

- (MSGraphProvisioningStepType*) toMSGraphProvisioningStepType{

    if([self isEqualToString:@"import"])
    {
          return [MSGraphProvisioningStepType import];
    }
    else if([self isEqualToString:@"scoping"])
    {
          return [MSGraphProvisioningStepType scoping];
    }
    else if([self isEqualToString:@"matching"])
    {
          return [MSGraphProvisioningStepType matching];
    }
    else if([self isEqualToString:@"processing"])
    {
          return [MSGraphProvisioningStepType processing];
    }
    else if([self isEqualToString:@"referenceResolution"])
    {
          return [MSGraphProvisioningStepType referenceResolution];
    }
    else if([self isEqualToString:@"export"])
    {
          return [MSGraphProvisioningStepType export];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphProvisioningStepType unknownFutureValue];
    }
    else {
        return [MSGraphProvisioningStepType UnknownEnumValue];
    }
}

@end
