// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphChangeNotificationEncryptedContent : MSObject

@property (nonnull, nonatomic, setter=setData:, getter=data) NSString* data;
@property (nonnull, nonatomic, setter=setDataKey:, getter=dataKey) NSString* dataKey;
@property (nonnull, nonatomic, setter=setDataSignature:, getter=dataSignature) NSString* dataSignature;
@property (nonnull, nonatomic, setter=setEncryptionCertificateId:, getter=encryptionCertificateId) NSString* encryptionCertificateId;
@property (nonnull, nonatomic, setter=setEncryptionCertificateThumbprint:, getter=encryptionCertificateThumbprint) NSString* encryptionCertificateThumbprint;

@end
