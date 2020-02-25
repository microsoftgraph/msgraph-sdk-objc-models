// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPasswordCredential : MSObject

@property (nullable, nonatomic, setter=setCustomKeyIdentifier:, getter=customKeyIdentifier) NSString* customKeyIdentifier;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setEndDateTime:, getter=endDateTime) NSDate* endDateTime;
@property (nullable, nonatomic, setter=setKeyId:, getter=keyId) NSString* keyId;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
@property (nullable, nonatomic, setter=setSecretText:, getter=secretText) NSString* secretText;
@property (nullable, nonatomic, setter=setHint:, getter=hint) NSString* hint;

@end
