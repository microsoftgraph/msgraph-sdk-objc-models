// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTokenIssuerTypeValue){

	MSGraphTokenIssuerTypeAzureAD = 0,
	MSGraphTokenIssuerTypeADFederationServices = 1,
	MSGraphTokenIssuerTypeUnknownFutureValue = 2,
	MSGraphTokenIssuerTypeAzureADBackupAuth = 3,
	MSGraphTokenIssuerTypeADFederationServicesMFAAdapter = 4,
	MSGraphTokenIssuerTypeNPSExtension = 5,
    MSGraphTokenIssuerTypeEndOfEnum
};

@interface MSGraphTokenIssuerType : NSObject

+(MSGraphTokenIssuerType*) azureAD;
+(MSGraphTokenIssuerType*) aDFederationServices;
+(MSGraphTokenIssuerType*) unknownFutureValue;
+(MSGraphTokenIssuerType*) azureADBackupAuth;
+(MSGraphTokenIssuerType*) aDFederationServicesMFAAdapter;
+(MSGraphTokenIssuerType*) nPSExtension;

+(MSGraphTokenIssuerType*) UnknownEnumValue;

+(MSGraphTokenIssuerType*) tokenIssuerTypeWithEnumValue:(MSGraphTokenIssuerTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTokenIssuerTypeValue enumValue;

@end


@interface NSString (MSGraphTokenIssuerType)

- (MSGraphTokenIssuerType*) toMSGraphTokenIssuerType;

@end
