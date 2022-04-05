// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSelfSignedCertificate : MSObject

@property (nullable, nonatomic, setter=setCustomKeyIdentifier:, getter=customKeyIdentifier) NSString* customKeyIdentifier;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
@property (nullable, nonatomic, setter=setKey:, getter=key) NSString* key;
@property (nullable, nonatomic, setter=setKeyId:, getter=keyId) NSString* keyId;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
@property (nullable, nonatomic, setter=setThumbprint:, getter=thumbprint) NSString* thumbprint;
@property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;
@property (nullable, nonatomic, setter=setUsage:, getter=usage) NSString* usage;

@end
