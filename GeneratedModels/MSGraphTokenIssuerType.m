// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTokenIssuerType.h"

@interface MSGraphTokenIssuerType () {
    MSGraphTokenIssuerTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTokenIssuerTypeValue enumValue;
@end

@implementation MSGraphTokenIssuerType

+ (MSGraphTokenIssuerType*) azureAD {
    static MSGraphTokenIssuerType *_azureAD;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureAD = [[MSGraphTokenIssuerType alloc] init];
        _azureAD.enumValue = MSGraphTokenIssuerTypeAzureAD;
    });
    return _azureAD;
}
+ (MSGraphTokenIssuerType*) aDFederationServices {
    static MSGraphTokenIssuerType *_aDFederationServices;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _aDFederationServices = [[MSGraphTokenIssuerType alloc] init];
        _aDFederationServices.enumValue = MSGraphTokenIssuerTypeADFederationServices;
    });
    return _aDFederationServices;
}
+ (MSGraphTokenIssuerType*) unknownFutureValue {
    static MSGraphTokenIssuerType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTokenIssuerType alloc] init];
        _unknownFutureValue.enumValue = MSGraphTokenIssuerTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}
+ (MSGraphTokenIssuerType*) azureADBackupAuth {
    static MSGraphTokenIssuerType *_azureADBackupAuth;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureADBackupAuth = [[MSGraphTokenIssuerType alloc] init];
        _azureADBackupAuth.enumValue = MSGraphTokenIssuerTypeAzureADBackupAuth;
    });
    return _azureADBackupAuth;
}
+ (MSGraphTokenIssuerType*) aDFederationServicesMFAAdapter {
    static MSGraphTokenIssuerType *_aDFederationServicesMFAAdapter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _aDFederationServicesMFAAdapter = [[MSGraphTokenIssuerType alloc] init];
        _aDFederationServicesMFAAdapter.enumValue = MSGraphTokenIssuerTypeADFederationServicesMFAAdapter;
    });
    return _aDFederationServicesMFAAdapter;
}
+ (MSGraphTokenIssuerType*) nPSExtension {
    static MSGraphTokenIssuerType *_nPSExtension;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _nPSExtension = [[MSGraphTokenIssuerType alloc] init];
        _nPSExtension.enumValue = MSGraphTokenIssuerTypeNPSExtension;
    });
    return _nPSExtension;
}

+ (MSGraphTokenIssuerType*) UnknownEnumValue {
    static MSGraphTokenIssuerType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTokenIssuerType alloc] init];
        _unknownValue.enumValue = MSGraphTokenIssuerTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTokenIssuerType*) tokenIssuerTypeWithEnumValue:(MSGraphTokenIssuerTypeValue)val {

    switch(val)
    {
        case MSGraphTokenIssuerTypeAzureAD:
            return [MSGraphTokenIssuerType azureAD];
        case MSGraphTokenIssuerTypeADFederationServices:
            return [MSGraphTokenIssuerType aDFederationServices];
        case MSGraphTokenIssuerTypeUnknownFutureValue:
            return [MSGraphTokenIssuerType unknownFutureValue];
        case MSGraphTokenIssuerTypeAzureADBackupAuth:
            return [MSGraphTokenIssuerType azureADBackupAuth];
        case MSGraphTokenIssuerTypeADFederationServicesMFAAdapter:
            return [MSGraphTokenIssuerType aDFederationServicesMFAAdapter];
        case MSGraphTokenIssuerTypeNPSExtension:
            return [MSGraphTokenIssuerType nPSExtension];
        case MSGraphTokenIssuerTypeEndOfEnum:
        default:
            return [MSGraphTokenIssuerType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTokenIssuerTypeAzureAD:
            return @"AzureAD";
        case MSGraphTokenIssuerTypeADFederationServices:
            return @"ADFederationServices";
        case MSGraphTokenIssuerTypeUnknownFutureValue:
            return @"UnknownFutureValue";
        case MSGraphTokenIssuerTypeAzureADBackupAuth:
            return @"AzureADBackupAuth";
        case MSGraphTokenIssuerTypeADFederationServicesMFAAdapter:
            return @"ADFederationServicesMFAAdapter";
        case MSGraphTokenIssuerTypeNPSExtension:
            return @"NPSExtension";
        case MSGraphTokenIssuerTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTokenIssuerTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTokenIssuerType)

- (MSGraphTokenIssuerType*) toMSGraphTokenIssuerType{

    if([self isEqualToString:@"AzureAD"])
    {
          return [MSGraphTokenIssuerType azureAD];
    }
    else if([self isEqualToString:@"ADFederationServices"])
    {
          return [MSGraphTokenIssuerType aDFederationServices];
    }
    else if([self isEqualToString:@"UnknownFutureValue"])
    {
          return [MSGraphTokenIssuerType unknownFutureValue];
    }
    else if([self isEqualToString:@"AzureADBackupAuth"])
    {
          return [MSGraphTokenIssuerType azureADBackupAuth];
    }
    else if([self isEqualToString:@"ADFederationServicesMFAAdapter"])
    {
          return [MSGraphTokenIssuerType aDFederationServicesMFAAdapter];
    }
    else if([self isEqualToString:@"NPSExtension"])
    {
          return [MSGraphTokenIssuerType nPSExtension];
    }
    else {
        return [MSGraphTokenIssuerType UnknownEnumValue];
    }
}

@end
