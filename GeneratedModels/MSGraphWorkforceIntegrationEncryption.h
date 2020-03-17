// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWorkforceIntegrationEncryptionProtocol.h"


#import "MSObject.h"

@interface MSGraphWorkforceIntegrationEncryption : MSObject

@property (nullable, nonatomic, setter=setWorkforceIntegrationEncryptionProtocol:, getter=workforceIntegrationEncryptionProtocol) MSGraphWorkforceIntegrationEncryptionProtocol* workforceIntegrationEncryptionProtocol;
@property (nullable, nonatomic, setter=setSecret:, getter=secret) NSString* secret;

@end
