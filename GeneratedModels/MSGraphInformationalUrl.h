// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphInformationalUrl : MSObject

@property (nullable, nonatomic, setter=setLogoUrl:, getter=logoUrl) NSString* logoUrl;
@property (nullable, nonatomic, setter=setMarketingUrl:, getter=marketingUrl) NSString* marketingUrl;
@property (nullable, nonatomic, setter=setPrivacyStatementUrl:, getter=privacyStatementUrl) NSString* privacyStatementUrl;
@property (nullable, nonatomic, setter=setSupportUrl:, getter=supportUrl) NSString* supportUrl;
@property (nullable, nonatomic, setter=setTermsOfServiceUrl:, getter=termsOfServiceUrl) NSString* termsOfServiceUrl;

@end
