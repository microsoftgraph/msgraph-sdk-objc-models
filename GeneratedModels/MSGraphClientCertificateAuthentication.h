// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphPkcs12CertificateInformation; 


#import "MSGraphApiAuthenticationConfigurationBase.h"

@interface MSGraphClientCertificateAuthentication : MSGraphApiAuthenticationConfigurationBase

@property (nullable, nonatomic, setter=setCertificateList:, getter=certificateList) NSArray* certificateList;

@end
