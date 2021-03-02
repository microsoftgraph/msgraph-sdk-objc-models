// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPrintCertificateSigningRequest : MSObject

@property (nonnull, nonatomic, setter=setContent:, getter=content) NSString* content;
@property (nonnull, nonatomic, setter=setTransportKey:, getter=transportKey) NSString* transportKey;

@end
