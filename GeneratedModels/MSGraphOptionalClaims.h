// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphOptionalClaim; 


#import "MSObject.h"

@interface MSGraphOptionalClaims : MSObject

@property (nullable, nonatomic, setter=setAccessToken:, getter=accessToken) NSArray* accessToken;
@property (nullable, nonatomic, setter=setIdToken:, getter=idToken) NSArray* idToken;
@property (nullable, nonatomic, setter=setSaml2Token:, getter=saml2Token) NSArray* saml2Token;

@end
