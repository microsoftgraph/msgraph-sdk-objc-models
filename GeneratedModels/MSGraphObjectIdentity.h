// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphObjectIdentity : MSObject

@property (nullable, nonatomic, setter=setSignInType:, getter=signInType) NSString* signInType;
@property (nullable, nonatomic, setter=setIssuer:, getter=issuer) NSString* issuer;
@property (nullable, nonatomic, setter=setIssuerAssignedId:, getter=issuerAssignedId) NSString* issuerAssignedId;

@end
