// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOptionalClaims()
{
    NSArray* _accessToken;
    NSArray* _idToken;
    NSArray* _saml2Token;
}
@end

@implementation MSGraphOptionalClaims

- (NSArray*) accessToken
{
    if(!_accessToken){
        
    NSMutableArray *accessTokenResult = [NSMutableArray array];
    NSArray *accessToken = self.dictionary[@"accessToken"];

    if ([accessToken isKindOfClass:[NSArray class]]){
        for (id tempOptionalClaim in accessToken){
            [accessTokenResult addObject:tempOptionalClaim];
        }
    }

    _accessToken = accessTokenResult;
        
    }
    return _accessToken;
}

- (void) setAccessToken: (NSArray*) val
{
    _accessToken = val;
    self.dictionary[@"accessToken"] = val;
}

- (NSArray*) idToken
{
    if(!_idToken){
        
    NSMutableArray *idTokenResult = [NSMutableArray array];
    NSArray *idToken = self.dictionary[@"idToken"];

    if ([idToken isKindOfClass:[NSArray class]]){
        for (id tempOptionalClaim in idToken){
            [idTokenResult addObject:tempOptionalClaim];
        }
    }

    _idToken = idTokenResult;
        
    }
    return _idToken;
}

- (void) setIdToken: (NSArray*) val
{
    _idToken = val;
    self.dictionary[@"idToken"] = val;
}

- (NSArray*) saml2Token
{
    if(!_saml2Token){
        
    NSMutableArray *saml2TokenResult = [NSMutableArray array];
    NSArray *saml2Token = self.dictionary[@"saml2Token"];

    if ([saml2Token isKindOfClass:[NSArray class]]){
        for (id tempOptionalClaim in saml2Token){
            [saml2TokenResult addObject:tempOptionalClaim];
        }
    }

    _saml2Token = saml2TokenResult;
        
    }
    return _saml2Token;
}

- (void) setSaml2Token: (NSArray*) val
{
    _saml2Token = val;
    self.dictionary[@"saml2Token"] = val;
}

@end
