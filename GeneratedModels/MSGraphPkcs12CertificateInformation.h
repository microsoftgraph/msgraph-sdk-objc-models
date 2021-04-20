// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPkcs12CertificateInformation : MSObject

@property (nonatomic, setter=setIsActive:, getter=isActive) BOOL isActive;
@property (nonatomic, setter=setNotAfter:, getter=notAfter) int64_t notAfter;
@property (nonatomic, setter=setNotBefore:, getter=notBefore) int64_t notBefore;
@property (nullable, nonatomic, setter=setThumbprint:, getter=thumbprint) NSString* thumbprint;

@end
