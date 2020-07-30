// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWorkforceIntegrationEncryptionProtocolValue){

	MSGraphWorkforceIntegrationEncryptionProtocolSharedSecret = 0,
	MSGraphWorkforceIntegrationEncryptionProtocolUnknownFutureValue = 1,
    MSGraphWorkforceIntegrationEncryptionProtocolEndOfEnum
};

@interface MSGraphWorkforceIntegrationEncryptionProtocol : NSObject

+(MSGraphWorkforceIntegrationEncryptionProtocol*) sharedSecret;
+(MSGraphWorkforceIntegrationEncryptionProtocol*) unknownFutureValue;

+(MSGraphWorkforceIntegrationEncryptionProtocol*) UnknownEnumValue;

+(MSGraphWorkforceIntegrationEncryptionProtocol*) workforceIntegrationEncryptionProtocolWithEnumValue:(MSGraphWorkforceIntegrationEncryptionProtocolValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWorkforceIntegrationEncryptionProtocolValue enumValue;

@end


@interface NSString (MSGraphWorkforceIntegrationEncryptionProtocol)

- (MSGraphWorkforceIntegrationEncryptionProtocol*) toMSGraphWorkforceIntegrationEncryptionProtocol;

@end
